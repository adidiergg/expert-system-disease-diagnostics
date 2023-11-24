import Image from 'next/image'
/*
                <Image
                  src="/doctor.png"
                  alt="Doctor Illustration"
                  width={150}
                  height={600}
                  priority
                />   
                */    


export default function Home() {
  return (
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
                  <div className="overflow-auto  flex flex-col justify-end gap-3 h-[75vh]">

                  <div className="w-2/3 break-words">
                      <p className="animate-fade-up animate-duration-500 animate-delay-[500ms] font-medium text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ">
                      Hola, soy BeginnerDoctor, tu sistema experto en diagnóstico médico. 
                      </p>
                  </div>

                  <div className="w-2/3 break-words">
                      <p className="animate-fade-up animate-duration-500 animate-delay-[1000ms]   font-medium text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ">
                      ¿Has experimentado algún síntoma recientemente que te preocupe o que quisieras compartir? Estoy aquí para ayudarte en lo que pueda.
                      </p>
                  </div>

                  <div className="w-2/3 break-words">
                      <p className="animate-fade-up animate-duration-500 animate-delay-[1500ms]   font-medium text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ">
                      Haz clic en "Iniciar" para comenzar tu evaluación.
                      </p>
                  </div>

                 

   
                  </div>

              </div>

              

            
        
        </div>

        <a
          href="/run"
          className= "rounded-lg  border border-transparent  px-10 py-4 transition-colors hover:border-gray-300 hover:bg-gray-100 hover:dark:border-neutral-700 hover:dark:bg-neutral-800/30"
          rel="noopener noreferrer"
          >
          <h2 className={`text-3xl text-primary font-bold`}>
           Iniciar 
          </h2>    
        </a>
        
      
    </main>
  )
}
