#ifndef _MON_H_
#define _MON_H_

//-----------------------------
// SystemC defines and includes
//-----------------------------
#include "systemc.h"
#include <string>
#include "tlm.h"

#include "VirtualBusFederate.h"
#include <algorithm>    // std::all_of


using namespace std;
using namespace tlm;

#include "ii_interface.h"
#include "ii_define.h"

//-----------------------------
// Constants
//-----------------------------


SC_MODULE(ii_monitor)
{

    VirtualBusFederate *federate;
    unsigned src;
    unsigned addr;
    unsigned size;
    unsigned data[16];    
    unsigned readsrc;
    unsigned cntrl_write;
    unsigned count = 0;

    //-----------------------------
    // Input
    //-----------------------------
    sc_in<bool> clk;
    sc_in<bool> async_reset;

    ii_interface* ii_if;
    ii_sequence_item* ii_sqi;
    ii_sequence_item* ii_sqi_clone;

    int monitor_errors;
    string fname_data_out;
    ofstream file_data_out;    

    //-----------------------------
    // TLM Analysis Port
    //-----------------------------
    tlm_analysis_port<ii_sequence_item> mon_port;

    //-----------------------------
    // Process Declaration
    //-----------------------------
    void capture_signals();
    void copy_if_sqi();

    //-----------------------------
    // Constructor
    //-----------------------------
    SC_HAS_PROCESS(ii_monitor);
    ii_monitor(sc_module_name name, ii_interface* sc_if) : sc_module(name)
    {

        INFO(this->name(), "construtor");
        const char *c = name;
        string n(c);
        monitor_errors = 0;
        fname_data_out = result_path + n + "_output.txt";
        file_data_out.open (fname_data_out.c_str(), ofstream::out);

        ii_sqi = new ii_sequence_item("ii_sqi");
        ii_sqi_clone = new ii_sequence_item("ii_sqi_clone"); //Necessary to avoid overwrite
	
	    ii_if = sc_if;

        for(unsigned int del_index = 0; del_index < 16; del_index++)
            data[del_index] = 0;
        //----------------------------
        // Process registration
        //----------------------------

        SC_THREAD(capture_signals);
           sensitive <<  async_reset.neg() << clk.pos();
    }
};

//+--------------------------------------------------------------------------
//| FUNCTION: capture_signals
//+--------------------------------------------------------------------------
//! Check if reset happens, copy the DUT interface to a sequence item and 
//! write it in the TLM port.
//+--------------------------------------------------------------------------
void ii_monitor::capture_signals()
{
    //std::cout << "executing this method" << std::endl;
    stringstream msg;  
    while (true) 
    {
        if(!async_reset.read())
        {
            wait(1, ASYNC_RST_TIMEUNIT);
        }
        ii_monitor::copy_if_sqi();
        ii_sqi_clone = ii_sqi;
        mon_port.write(*ii_sqi_clone);
        wait(1); 
    }
}

//+--------------------------------------------------------------------------
//| FUNCTION: copy_if_sqi
//+--------------------------------------------------------------------------
//! Copy interface signals to sequence item
//+--------------------------------------------------------------------------
void ii_monitor::copy_if_sqi()
{
    stringstream msg;

    // ii_sqi->data_valid  = ii_if->out_data_valid.read();
    // for(int i = 0; i < DATA_SIZE; i++) 
    // {
    //     ii_sqi->data_out[i] = ii_if->out_data[i].read();
    //     msg << "Read: out_data = " << ii_sqi->data_out[i];
    //     INFO(name(), msg.str().c_str(), HIGH);
    //     msg.str(""); //clean
    // }

    src = readsrc;
    if(federate->readData(src, addr, size, data))
    {        
        if(src == readsrc)
        {
            bool zeros = true;
            for(unsigned int i = 0; i < 16; i++)
            {
                //std::cout << "SRC " << src << " Compare data[" << i << "]=" << data[i] << std::endl;
                if(data[i] != 0) {zeros = false; break;}
            }    
            //if(count < 11 && src == 2)   
            //if( std::all_of(data, data+DATA_SIZE, [](unsigned index_){return index_== 0;}) )
            if(zeros)
            {
                count++;
                ii_sqi->data_valid  = 0;
                msg << "ERRO:" << src;
                INFO(name(), msg.str().c_str(), HIGH);
                msg.str(""); //clean
                for(int i = 0; i < DATA_SIZE; i++) 
                {                
                    msg << "Read: out_data " << i << " = " << data[i];
                    INFO(name(), msg.str().c_str(), HIGH);
                    msg.str(""); //clean

                    file_data_out << data[i] << " ";
                }
                file_data_out << std::endl;
            }
            else
            {                
                msg << "data from src=readsrc " << src;
                // cout << msg.str() << endl;
                INFO(name(), msg.str().c_str(), HIGH);
                msg.str(""); //clean

                for(int i = 0; i < DATA_SIZE; i++) 
                {                
                    ii_sqi->data_out[i] = (unsigned int)data[i]; 
                    msg << "Read: out_data " << i << " = " << ii_sqi->data_out[i];
                    // cout << msg.str() << endl;
                    INFO(name(), msg.str().c_str(), HIGH);
                    msg.str(""); //clean

                    file_data_out << data[i] << " ";
                }

                file_data_out << std::endl;
                ii_sqi->data_valid  = 1;
            }
        
        }
        else
        {         
            msg << "err data from src " << src;
            INFO(name(), msg.str().c_str(), HIGH);
            msg.str(""); //clean            
        }
       // federate->advanceTime(1.0);
        
    }
    


  //save output data
  //file_data_out << ii_if->out_data_rdy << " " << ii_if->out_data << " " << ii_if->out_carryout << endl;
}

#endif
