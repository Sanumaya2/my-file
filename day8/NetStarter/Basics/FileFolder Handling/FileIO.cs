using System.IO;
class FileIO
{
    string folderPath = @"D:\my file\day8\NetStarter\Basics\FileFolder Handling";
    //Create a text file
    public void CreateFile()
    {
        
        string fileName = "student.txt";
        string filePath = Path.Combine(folderPath , fileName);
        File.WriteAllText(filePath , "this is first line");
    }

    public void CreateFileWithInFolder()
    {
        string newFolderName =  "Student";
        string newFolderPath = Path.Combine(folderPath , newFolderName);
        Directory.CreateDirectory(newFolderPath);
        
        string fileName = "student1.txt";
        string filePath = Path.Combine(newFolderPath , fileName);
        File.WriteAllText(filePath , "this is first line");
        
    }
}