@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)
  <>
    <h3> {count->Belt.Int.toString->React.string} </h3>
    <button onClick={_ => setCount(prev => prev + 1)}> {"Increment"->React.string} </button>
    <button onClick={_ => setCount(prev => prev - 1)}> {"Decrement"->React.string} </button>
    <button onClick={_ => setCount(_ => 0)}> {"Reset"->React.string} </button>
    <br/>
    <br/>
    <button onClick={_ => RescriptReactRouter.push("zoo")}>{"Go to zoo"-> React.string}</button>
  </>
}
