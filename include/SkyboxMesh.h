#ifndef _SKYBOXMESH_H
#define _SKYBOXMESH_H

#include "Vertices.h"
#include "Common.h"

class SkyboxMesh
{
public:
    SkyboxMesh();
    ~SkyboxMesh();
    
    void create(Vertex * pVerts, int numVerts, int * pIndices, int numIndices);
    
    GLuint getVertexArrayObject()
    {
        return m_VAO;
    };
    
    int getNumberOfIndices()
    {
        return m_NumberOfIndices;
    };
    
    int getNumberOfVertices()
    {
        return m_NumberOfVertices;
    };
    
    
private:
    GLuint m_VBO;
    GLuint m_EBO;
    GLuint m_VAO;
    
    int m_NumberOfIndices;
    int m_NumberOfVertices;
    
    int m_IndicesIndexStart;
    int m_VertexIndexStart;
    int m_IndicesIndexEnd;
    int m_VertexIndexEnd;
};

#endif /* SkyboxMesh_h */
