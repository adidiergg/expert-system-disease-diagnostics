'use client';
import { useState} from 'react';
import Image from 'next/image';
import { useEffect } from 'react';
import Script from 'next/script';





export default function Run() {

  
  
  return (
    
    <>
    <Script 
      src='main.js'
    />
    <Script 
      src="tau-prolog.js"
      onLoad={() => {

        var session = pl.create();
        fetch("diagnosis.pl").
        then((response)=>{
          response.text().then((program)=>{
            
            // Consult program
            session.consult(program);
            // Query goal
            session.query("init.");
            // Find answers
            session.answer(console.log);
            
          });
        });
        


        
        
      }}
    
    />
    <main className="flex flex-col items-center gap-3 p-4 lg:p-8">
          <div className=' flex w-10/12  flex-row '>
              <div className="relative basis-1/3">
                <Image
                  src="/doctor.png"
                  alt="Doctor Illustration"
                  fill={true}
                  objectFit='contain'
                  priority
                />   
              </div>

              <div className='flex-1  basis-2/3 '>
                  <div id='chat' className="overflow-y-scroll flex flex-col  items-start  gap-3 h-[75vh] ">
                      
                  </div>

              </div>

              

            
        
        </div>

        <div id='menu' className='flex flex-row gap-3'>

        <button
          id="yes"
          className= "rounded-lg  border border-transparent  px-10 py-4 transition-colors hover:border-gray-300 hover:bg-gray-100 hover:dark:border-neutral-700 hover:dark:bg-neutral-800/30"
          onClick={()=>ask("si")} 
          >
          <h2 className={`text-3xl text-primary font-bold`}>
          Si 
          </h2>    
        </button>

        <button
          id="no"
          className= "rounded-lg  border border-transparent  px-10 py-4 transition-colors hover:border-gray-300 hover:bg-gray-100 hover:dark:border-neutral-700 hover:dark:bg-neutral-800/30"
          onClick={()=>ask("no")}
          >
          <h2 className={`text-3xl text-primary font-bold`}>
           No 
          </h2>    
        </button>
        </div> 
    </main>
    </>
    
  )
}
