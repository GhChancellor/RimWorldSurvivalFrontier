namespace RimWorldSurvivalFrontier.Source.managementError
{
    internal class ManagementError
    {
        private string NameMod { get; set; }
        private string NameClass { get; set; }
        private string Code { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="ManagementError"/> class.
        /// </summary>
        /// <param name="nameMod"></param>
        /// <param name="nameClass"></param>
        /// <param name="code"></param>
        public ManagementError(string nameMod, string nameClass, string code = "Code:")
        {
            NameMod = nameMod;
            NameClass = nameClass;
            Code = code;
        }

        /// <summary>
        /// Gets the full error message and code.
        /// </summary>
        /// <returns>A string containing the error message and code.</returns>
        public string GetMessageAndCode()
        {
            var messageAndCode = NameMod + NameClass + Code;
            return messageAndCode;
        }
    }
}
