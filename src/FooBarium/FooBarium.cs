namespace FooBarium
{
    public class FooBarium
    {
        public string Name { get; set; }

        public FooBarium(string name)
        {
            Name = name;
        }

        public string GetGreeting()
        {
            return $"Hello, {Name}! Welcome to FooBarium.";
        }
    }
}