@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  
  switch (url.path) {
      | list{} => <Index />
      | list{"about"}=> <About />
      | list{"form"}=> <Form />
      | _=> <FourOhFour/>
    }
}
