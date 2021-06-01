import express, {json} from 'express';
import morgan from 'morgan';

//importing router
import projectRoutes from './routes/projects'
import taskRoutes from './routes/tasks'

const app = express();

//middelwares
app.use(morgan('dev'));
app.use(json());

//routes
app.use('/api/projects', projectRoutes);
app.use('/api/tasks', taskRoutes);

export default app;