class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var correctImage = image[sr][sc]
        var copyImage = image
        
        if (correctImage == newColor) {
            return image
        } 
        let rowCount = image.count
        let columnCount = image[0].count
        return fill(copyImage, sr, sc, newColor, correctImage)
    }
    
    func fill(_ image: [[Int]],
              _ sr: Int,
              _ sc: Int,
              _ newColor: Int,
              _ currentImage: Int) -> [[Int]] {
        
        
        if (sr < 0 || sr >= image.count) || (sc < 0 || sc >= image[0].count) {
            return image
        }
        
        //base condition
        if (currentImage != image[sr][sc]) {
            return image
        }
        
        var copyImage = image
        copyImage[sr][sc] = newColor
        
        //top
        if (sr >= 0) {
            copyImage = fill(copyImage, sr-1, sc, newColor, currentImage)   
        }
        
        //bottom
        if (sr < image.count) {
            copyImage = fill(copyImage, sr+1, sc, newColor, currentImage)   
        }
        
        //left
        if (sc >= 0) {
            copyImage = fill(copyImage, sr, sc-1, newColor, currentImage)   
        }
        
        //right
        if (sc < image[0].count) {
            copyImage = fill(copyImage, sr, sc+1, newColor, currentImage)   
        }
        
        return copyImage
        
    }
    
}
