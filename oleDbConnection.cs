using System;

namespace PhoneApp
{
    internal class oleDbConnection
    {
        private string v;

        public oleDbConnection(string v)
        {
            this.v = v;
        }

        public oleDbConnection(string v, object integrated)
        {
            this.v = v;
        }

        internal void Close()
        {
            throw new NotImplementedException();
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }
    }
}