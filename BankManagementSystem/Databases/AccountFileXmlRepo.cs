using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BankManagementSystem.Models;
using BankManagementSystem.Repos;
using System.Xml.Serialization;

namespace BankManagementSystem.Databases
{
    public class AccountFileXmlRepo : IAccountRepo
    {
        private string _filePath = "accounts.xml"; // Path to the XML file
        private static AccountFileXmlRepo _instance;
        private ObservableCollection<Account> accounts;

        /// <summary>
        /// Initializes a new instance of the AccountMemoryRepo class.
        /// </summary>
        public AccountFileXmlRepo()
        {
            if (!File.Exists(_filePath))
            {
                using (var stream = new FileStream(_filePath, FileMode.Create))
                {
                    var emptyList = new List<Account>();
                    XmlSerializer serializer = new XmlSerializer(typeof(List<Account>));
                    serializer.Serialize(stream, emptyList);
                }
            }
            accounts = new ObservableCollection<Account>();
            InitializeAccounts();

        }
        /// <summary>
        /// Initializes the accounts collection with default accounts.
        /// </summary>
        private void InitializeAccounts()
        {
            accounts.Add(new Account
            {
                AccountNumber = 1234,
                Name = "Minnu",
                Balance = 0,
                Type = "savings",
                Email = "minnu@gmail.com",
                PhoneNumber = "5236526526",
                Address = "Address",
                IsActive = true,
                InterestPercentage = "0",
                TransactionCount = 0,
                LastTransactionDate = DateTime.Now,
            });
            accounts.Add(new Account
            {
                AccountNumber = 12345,
                Name = "Ashna",
                Balance = 0,
                Type = "current",
                Email = "ashna@gmail.com",
                PhoneNumber = "5236526526",
                Address = "address",
                IsActive = true,
                InterestPercentage = "0",
                TransactionCount = 0,
                LastTransactionDate = DateTime.Now,
            });
        }

        /// <summary>
        /// Creates an object for the AccountMemoryRepo class
        /// </summary>
        public static AccountFileXmlRepo Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new AccountFileXmlRepo();
                }
                return _instance;
            }
        }


        //public AccountFileXmlRepo()
        //{
        //    // Create an empty file if it doesn't exist
        //    if (!File.Exists(_filePath))
        //    {
        //        using (var stream = new FileStream(_filePath, FileMode.Create))
        //        {
        //            var emptyList = new List<Account>();
        //            XmlSerializer serializer = new XmlSerializer(typeof(List<Account>));
        //            serializer.Serialize(stream, emptyList);
        //        }
        //    }
        //}

        public void Create(Account account)
        {
            var accounts = ReadAll().ToList();
            accounts.Add(account);

            // Serialize and save the updated account list
            using (var stream = new FileStream(_filePath, FileMode.Create))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(List<Account>));
                serializer.Serialize(stream, accounts);
            }
        }

        public void Update(Account account)
        {
            var accounts = ReadAll().ToList();
            var existingAccount = accounts.FirstOrDefault(a => a.AccountNumber == account.AccountNumber);
            if (existingAccount != null)
            {
                accounts.Remove(existingAccount);
                accounts.Add(account);

                // Serialize and save the updated account list
                using (var stream = new FileStream(_filePath, FileMode.Create))
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(List<Account>));
                    serializer.Serialize(stream, accounts);
                }
            }
        }

        public void Delete(Account account)
        {
            var accounts = ReadAll().ToList();
            var delaccount = accounts.FirstOrDefault(a => a.AccountNumber == account.AccountNumber);
            if (delaccount != null)
            {
                accounts.Remove(delaccount);

                // Serialize and save the updated account list
                using (var stream = new FileStream(_filePath, FileMode.Create))
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(List<Account>));
                    serializer.Serialize(stream, accounts);
                }
            }
        }

        public void Deposit(int acNo, int amount)
        {
            var account = ReadAll().FirstOrDefault(a => a.AccountNumber == acNo);
            if (account != null)
            {
                account.Balance += amount;
                Update(account);
            }
        }

        public void Withdrw(int acNo, int amount)
        {
            var account = ReadAll().FirstOrDefault(a => a.AccountNumber == acNo);
            if (account != null && account.Balance >= amount)
            {
                account.Balance -= amount;
                Update(account);
            }
        }

        public void CalculateInterestAndUpdateBalance()
        {
            // Implement logic for interest calculation if needed
        }

        public ObservableCollection<Account> ReadAll()
        {
            using (var stream = new FileStream(_filePath, FileMode.Open))
            {
                XmlSerializer serializer = new XmlSerializer(typeof(List<Account>));
                var accounts = (List<Account>)serializer.Deserialize(stream);
                return new ObservableCollection<Account>(accounts);
            }
        }
    }
}

