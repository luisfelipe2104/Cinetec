import { PrismaClient } from "@prisma/client"
import { NextApiRequest, NextApiResponse } from "next"
const prisma = new PrismaClient()

export default async function createUser(req: NextApiRequest, res: NextApiResponse) {
    const { email, pass, name } = req.body
    if (!email || !pass || !name) return res.status(404).json({ msg: "data can't be empty" })
    try {
      await prisma.user.create({ data: { email: email, password: pass, name: name } })
      return res.status(201).json({ msg: "User created!" })
    } catch (err: any) {
      console.log(err);
      return res.status(500).json({ msg: err})
    } finally {
      async () => {
        await prisma.$disconnect()
      }
    }
}