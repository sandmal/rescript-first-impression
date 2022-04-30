@react.component
let make = (~description: string) => {
    <h3> {("Selected animal is " ++ description)->React.string} </h3>
}
