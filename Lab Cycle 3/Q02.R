# Install the package
install.packages("igraph")

# Load the igraph package
library(igraph)

# a) Create graph and get adjacency list
create_graph <- function(edges, num_vertices) {
  g <- graph(edges = edges, n = num_vertices, directed = FALSE)
  print(g)
  adj_list <- as_adj_list(g, mode = "all")
  print(adj_list)
  return(g)
}

# b) Function to add an edge between two vertices
add_edge <- function(graph, u, v) {
  graph <- add_edges(graph, c(u, v))
  adj_list <- as_adj_list(graph, mode = "all")
  print(adj_list)
  return(graph)
}

# c) DFS traversal function
perform_dfs <- function(graph, start_vertex) {
  dfs_result <- dfs(graph, root = start_vertex, unreachable = FALSE)
  print(dfs_result$order)
  return(dfs_result$order)
}

# Plotting function
plot_graph <- function(graph) {
  plot(
    graph,
    vertex.color = "skyblue",
    vertex.size = 30,
    vertex.label.color = "black",
    vertex.label.cex = 1.2,
    edge.color = "gray",
    layout = layout_with_fr  # Fruchterman-Reingold layout for a balanced look
  )
}

# Example Usage
edges <- c(1, 2, 1, 3, 2, 4, 3, 4, 4, 5)
num_vertices <- 5
graph <- create_graph(edges, num_vertices)
graph <- add_edge(graph, 1, 4)
dfs_order <- perform_dfs(graph, start_vertex = 1)

# Plot the graph
plot_graph(create_graph(edges,num_vertices))
plot_graph(graph)
