import { Quicksand } from 'next/font/google'
import './globals.css'


const quicksand = Quicksand({ subsets: ['latin'] })

export const metadata = {
  title: 'BeginnerDoctor',
  description: 'Sistema experto para el diagnostico de enfermedades',
}

export default function RootLayout({ children }) {
  

  return (
    <html lang="en">
      <body className={`${quicksand.className} h-screen bg-light`} >{children}</body>
    </html>
  )
}
