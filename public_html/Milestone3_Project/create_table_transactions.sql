CREATE TABLE Transactions (
    id int auto_increment,
    name varchar(20) unique,
    acc_src_id int not null,
    acc_dest_id int null,
    amount decimal(12,2),
    `acctype` varchar(10), --deposit, withdraw, transfer
    memo TEXT,
    exp_total decimal (12,2),
    created datetime default current_timestamp,
    primary key (id),
    foreign key (acc_src_id) references Accounts(id),
    foreign key (acc_dest_id) references Accounts(id)
)