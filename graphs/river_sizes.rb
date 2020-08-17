
# O(wh) time and space
def river_sizes(matrix)

  sizes = []
  visited = matrix.map{|row| row.map{|value| value = false}}

  for i in 0..matrix.length
    for j in 0..matrix[i].length
      if visited[i][j]
        next
      end
      traverse_node(i, j, matrix, visited, sizes)
    end
  end

  return sizes
end

def traverse_node(i, j, matrix, visited, sizes)
  current_river_size = 0
  nodes_to_explore = [[i,j]]

  while nodes_to_explore.length
    current_node = nodes_to_explore.shift
    i = current_node[0]
    j = current_node[1]
    if visited[i][j]
      next
    end
    visited[i][j] = true
    if matrix[i][j] == 0
      next
    end
    current_river_size += 1
    unvisited_neighbours = get_unvisited_neighbours(i, j, matrix, visited)
    for neighbour in unvisited_neighbours
      nodes_to_explore.append(neighbour)
    end
  end
  if current_river_size > 0
    sizes.append(current_river_size)
  end
end

def get_unvisited_neighbours(i, j, matrix, visited)
  unvisited_neighbours = []

  if i > 0 and !visited[i - 1, j]
    unvisited_neighbours.append([i - 1, j])
  end

  if i < (matrix.length - 1) and !visited[i + 1, j]
    unvisited_neighbours.append([i + 1, j])
  end

  if j > 0 and !visited[i, j-1]
    unvisited_neighbours.append([i, j-1])
  end

  if i < (matrix[0]- 1) and !visited[i, j + 1]
    unvisited_neighbours.append([i, j + 1])
  end

  return unvisited_neighbours

end








