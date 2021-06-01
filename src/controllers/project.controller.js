import Project from '../models/Project'

export async function createProject(req, res){
    const {name, priority, description, deliverydate} = req.body;
    try {
        let newProject = await Project.create({
            name: name,
            priority: priority,
            description: description,
            deliverydate: deliverydate
        }, {
            fields: ['name', 'priority', 'description', 'deliverydate']
        });
        if (newProject){
            return res.json({
                message: 'Project created successfully',
                data: newProject
            });
        }
    } catch (e){
        console.log(e);
        res.status(500).json({
            message: 'Something goes wrong',
            data: {}
        })
    }
}