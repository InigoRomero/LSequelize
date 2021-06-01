import { Router } from 'express'
const router = Router();

import { createProject } from '../controllers/project.controller'

// /api/projects/
router.post('/', createProject);

export default router;