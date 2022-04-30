@module("./Nav.module.css") external styles:{..} = "default"

@react.component
let make = () => {
  /* RescriptReactRouter.push() */
  <div className={styles["wrapper"]}>
  <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("/")}>{"Home" -> React.string}</div>
  <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("about")}>{"About" -> React.string}</div>
  <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("form")}>{"Form" -> React.string}</div>
  </div>
}
