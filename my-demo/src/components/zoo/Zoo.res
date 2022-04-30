%%raw("import './zoo.css'")

type height = int
type isBarking = bool
type animal = Zebra | Giraffe(height) | Dog(isBarking)

type state = {selectedAnimal: option<animal>}

let state = {
  selectedAnimal: None,
}

type action = AnimalSelected(animal)

let reducer = (state, action) => {
  switch action {
  | AnimalSelected(a) => {...state, selectedAnimal: Some(a)}
  }
}

////// End reducer

let getInformation = (a: animal) => {
  switch a {
  | Zebra => "The animal is Zebra"
  | Giraffe(h) => `The giraffe is ${h->Belt.Int.toString} feet tall`
  | Dog(b) => `The dog is ${b == true ? "is" : "is not"} barking`
  }
}

let getAnimalString = (a: option<animal>) => {
  switch a {
  | Some(a) => getInformation(a)
  | None => "No animals"
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(reducer, state)

  <>
    <SelectedAnimalHeader description={state.selectedAnimal -> getAnimalString} />
    <button onClick={_ => Zebra->AnimalSelected->dispatch}> {"Select Zebra"->React.string} </button>
    <button onClick={_ => Giraffe(10)->AnimalSelected->dispatch}>
      {"Select Giraffe"->React.string}
    </button>
    <button onClick={_ => Dog(true)->AnimalSelected->dispatch}>
      {"Select Dog"->React.string}
    </button>
  </>
}
