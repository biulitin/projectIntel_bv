create database Ordinator;
go

--���������, ��� ��� ���������� ������� ������ ���� ��������� ��� �� ���������
use Ordinator;
go

--���
create table Gender (
	id int primary key, --���
	name text,			--�������� ���� (��� ����������� � ����������)
	codeFIS text		--��� �������� � ���
);
go

--�����������
create table Nationality (
	id int primary key, --���
	name text,			--�������� �����������/������ (��� ����������� � ����������)
	codeFIS text		--��� �������� � ���
);
go

--������� �������� ����������
create table ReturnReasons (
	id int primary key, --���
	name text,			--������������ ������� (��� ����������� � ����������)
	codeFIS text		--��� �������� � ���
);
go

--����������
create table Abiturient (
	aid int primary key,	--���/����� ������� ���� �����������
	SName text,				--�������
	Fname text,				--���
	MName text,				--��������
	Birthday Date,			--���� ��������
	Birthplace text,		--����� ��������
	id_gender int,			--��� ����
	id_nationality int,		--��� ������ �����������
	phoneNumbers text,		--��������
	needHostel int,			--����� "��������� � ���������"
	registrationDate Date,	--���� ������ ���������
	returnDate Date,		--���� �������� ����������
	id_returnReason int,	--������� �������� ����������
	needSpecConditions int,	--����� "��������� � ����������� �������� ������������� ���������"
	is_enrolled int,		--����� � ����������
	
	--������� �����
	foreign key (id_gender) references Gender(id),
	foreign key (id_nationality) references Nationality(id),
	foreign key (id_returnReason) references ReturnReasons(id)
);