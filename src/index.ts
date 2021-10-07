import * as express from 'express'

const port = process.env.PORT ?? '4001'

const app = express()

app.get('/', (req, res) => {
  res.status(200).send('Hello world')
})

app.listen(port, () => {
  console.log(`listening on port ${port}`)
})
