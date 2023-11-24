

var next = false; // this is to be changed on user input
var answer = ""

function addMessageDoctor(message){
  var chat = document.getElementById("chat");
  var messageContent = document.createElement("div");
  messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[1000ms] w-2/3 break-words";
  var messageText = document.createElement("p");
  messageText.className = "font-semibold text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ";
  messageText.innerHTML = `¿Has experimentado<br><strong>${message}</strong>?  🤔`;
  messageContent.append(messageText);
  chat.appendChild(messageContent);
  
  chat.scrollTop = chat.scrollHeight;
  
}

function ask(x){
    answer = x;
    var chat = document.getElementById("chat");
    var messageContent = document.createElement("div");
    messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[500ms] w-2/3 break-words self-end";
    var messageText = document.createElement("p");
    messageText.className = "font-semibold text-sm lg:text-lg text-left text-light  border-b border-gray-300 bg-gradient-to-b from-primary to-secondary p-4  rounded-xl  bg-gradient-to-b lg:border lg:bg-gray-200 lg:p-4 lg:dark:bg-zinc-800/30";
    messageText.innerHTML = `<strong>${x}</strong>`;
    messageContent.append(messageText);
    chat.appendChild(messageContent);
    chat.scrollTop = chat.scrollHeight;
    next = true;
  }

function showResult(message){
  var chat = document.getElementById("chat");
  if(message === "desconocido"){ 
    var messageContent = document.createElement("div");
    messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[1000ms] w-2/3 break-words";
    var messageText = document.createElement("p");
    messageText.className = "font-semibold text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ";
    messageText.innerHTML = `
    Según los síntomas que has proporcionado, no he podido encontrar una enfermedad que coincida con tu descripción.
  `;
    messageContent.append(messageText);
    chat.appendChild(messageContent);

  }else{
    const capitalized = message.charAt(0).toUpperCase() + message.slice(1);
    const satitized = capitalized.replace(/_/g," ");
    
    var messageContent = document.createElement("div");
    messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[1000ms] w-2/3 break-words";
    var messageText = document.createElement("p");
    messageText.className = "font-semibold text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ";
    messageText.innerHTML = `
    Según los síntomas que has proporcionado, podría ser prudente consultar a un profesional de la salud para evaluar la posibilidad de   <strong>${satitized}</strong> y obtener un diagnóstico más preciso
  `;
    messageContent.append(messageText);
    chat.appendChild(messageContent);

  }
  
  chat.scrollTop = chat.scrollHeight;
  document.getElementById("yes").remove();
  document.getElementById("no").remove();
  var menu = document.getElementById("menu");
  var btnReset = document.createElement("a");
  btnReset.href = "/run";
  btnReset.className = "animate-fade animate-duration-500 animate-delay-[1500ms] rounded-lg  border border-transparent  px-10 py-4 transition-colors hover:border-gray-300 hover:bg-gray-100 hover:dark:border-neutral-700 hover:dark:bg-neutral-800/30";
  btnReset.rel = "noopener noreferrer";
  contentReset = document.createElement("h2");
  contentReset.className = "text-3xl text-primary font-bold";
  contentReset.innerHTML = "Realizar otra consulta";
  btnReset.appendChild(contentReset);
  menu.appendChild(btnReset);

}

  var timeout = async ms => new Promise(res => setTimeout(res, ms));
  

  async function waitUserInput() {
      while (next === false) {
      await timeout(0); // pauses script
      }
      
      next = false; // reset var
  }


async function  input(){
    await waitUserInput();
    return answer;
};



