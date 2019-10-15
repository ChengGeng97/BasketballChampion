{
    "id": "2518d530-3ab8-4418-ba46-a79369bc0d5b",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "Level3Pattern1OrbitalSpawner",
    "eventList": [
        {
            "id": "8541e4f0-8959-4e29-b14a-74a6533af646",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "2518d530-3ab8-4418-ba46-a79369bc0d5b"
        },
        {
            "id": "e2ad7906-860c-46d6-977e-c698f614b7f3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "2518d530-3ab8-4418-ba46-a79369bc0d5b"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "2826646a-1e6c-4439-ba89-4f8029d0c153",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "owner_id",
            "varType": 0
        },
        {
            "id": "2a26590a-3a24-41f2-9230-49befde533ad",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "spawn_radius",
            "varType": 1
        },
        {
            "id": "ce503312-d506-45af-9fb1-980879a29650",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "bullets_per_spawn",
            "varType": 1
        },
        {
            "id": "8e48cc02-e878-4e70-b1d2-d57f81760f34",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "orbital_state",
            "varType": 0
        },
        {
            "id": "648cb8e0-5063-471f-9f84-15c9783d2735",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "first_time",
            "varType": 3
        },
        {
            "id": "68f3dadf-1fe8-4bac-a418-f65f26bb9c29",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "total_half_rotations",
            "varType": 1
        },
        {
            "id": "493cfa0d-f5a9-468c-a0a0-12c158fc3573",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "maximum_half_rotations",
            "varType": 0
        },
        {
            "id": "b3818af9-b08c-45a0-b397-908fb6e76452",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "angle_swept_up",
            "varType": 0
        },
        {
            "id": "9c9f056e-55c6-4bc6-b5d6-393f754c7690",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "9",
            "varName": "angle_per_frame",
            "varType": 0
        },
        {
            "id": "270c2b39-636b-4afc-b3a5-811c1a5dbcb2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "pause_frame_counter",
            "varType": 0
        },
        {
            "id": "88fa66eb-121a-4708-a253-8b8b6f654874",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "pause_frame_max",
            "varType": 0
        },
        {
            "id": "60fd4b19-d64d-48b3-a4eb-91bddb89e424",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "fire_counter",
            "varType": 0
        },
        {
            "id": "6a862e88-badd-41d2-9cf7-416436aa6a59",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "fire_frame_counter",
            "varType": 0
        },
        {
            "id": "f74e5bd0-cb34-451b-930a-f64690603aa2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "frames_between_fire",
            "varType": 0
        },
        {
            "id": "969ebad0-2b26-4b72-8c6a-449f4371603d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "30",
            "varName": "bullet_speed",
            "varType": 0
        },
        {
            "id": "3a53c52f-c407-40dc-ade3-1a6badd59d5c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "30",
            "varName": "summon_frame_max",
            "varType": 0
        },
        {
            "id": "e9be6ccd-daeb-4cf6-8071-c4feac2b0bd7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "summon_frame_counter",
            "varType": 0
        },
        {
            "id": "50bcdf6c-2ad5-4725-841f-1dea85a059e5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sub_spawner_id",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00f0c51d-8dad-43c3-9b40-ccbc5b897c89",
    "visible": true
}