import Head from 'next/head'
import styles from '../styles/Home.module.css'
import Tweet_structure from "./Tweet_structure"


export default function Home() {
  return (
    <div className={styles.container}>
      <h1>Hello, World!</h1>
      
      <Tweet_structure text = {"test"} author= {"one"} date = {"two"}></Tweet_structure>
    </div>
  )
}
