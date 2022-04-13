var beanio = require('beanio')
function onInit () {
  beanio.setup({
    token: '',
    subscribes: ['hello.world'] // channels
  })
  beanio.on('connect', () => {
    console.log('beanio connected')
  })
  beanio.on('disconnect', () => {
    console.log('beanio disconnected')
  })
  beanio.on('device-notify', status => {
    if (status == 1) {
      console.log('enter the scene')
    } else if (status == 0) {
      console.log('leave the scene')
    }
  })
  beanio.on('hello.world', v => {
    console.log('hello.world:' + v)
  })
}

onInit() //If you do not call save, call onInit.
