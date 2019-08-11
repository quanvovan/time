.data 
	day : .space 2
	month : .space 2
	year : .space 4
	
	
	#Yeu cau 
	note : .asciiz "\nNhap theo cau truc DD/MM/YYYY\n"
	request1 : .asciiz "\nNhap ngay DAY : "
	request2 : .asciiz "\nNhap thang MONTH : "
	request3 : .asciiz "\nNhap nam YEAR : "
	
	#MENU 
	MENU : 	  .asciiz 	"\n----------Ban hay chon 1 trong cac thao tac duoi day----------\n"
	option1 : .asciiz	"\n1. Xuat chuoi TIME theo dinh dang DD/MM/YYYY"
	option2 : .asciiz	"\n2. Chuyen doi chuoi TIME thanh mot trong cac dinh dang sau:"
	option2a : .asciiz	"\n\tA. MM/DD/YYYY"
	option2b : .asciiz	"\n\tB. Month DD, YYYY"
	option2c : .asciiz	"\n\tC. DD Month, YYYY"
	option3 : .asciiz	"\n3. Kiem tra nam trong chuoi TIME co phai la nam nhuan khong"
	option4 : .asciiz	"\n4. Cho biet ngay vua nhap la ngay thu may trong tuan"
	option5 : .asciiz	"\n5. Cho biet ngay vua nhap la ngay thu may ke tu ngay 1/1/1"
	option6 : .asciiz	"\n6. Cho biet can chi cua nam vua nhap. Vi du nam 2019 la Ky Hoi"
	option7 : .asciiz 	"\n7. Cho biet khoang thoi gian giua chuoi TIME_1 va TIME_2"
	option8 : .asciiz 	"\n8. Cho biet 2 nam nhuan gan nhat voi nam trong chuoi time"
	option9 : .asciiz 	"\n9. Nhap input tu file input.txt xuat ket qua toan bo cac chuc nang tren ra file output.txt"
	line : .asciiz	"\n---------------------------------------------------------------\n"
	
	#Lua chon :
	option : .asciiz "Lua chon : "
	res : .ascii "Ket qua : " 
	continue : .ascii "\nNhap (0) de thoat, (1) de tiep tuc : "
	test : .ascii "\nDu lieu nhap sai"
	
	#doc du lieu tu file input 
	str : .space 40
.text 
	.globl main
main : 
	#yeu cau nhap 
	#request : 
	#	addi $sp,$sp,-36
	#	sw $ra, 32($sp)
	#	sw $a0, 28($sp)
	#	sw $t0, 24($sp)
	#	sw $t1, 20($sp)
	#	sw $t3, 16($sp)
	#	sw $a0, 12($sp)
	#	sw $a1, 8($sp)
	#	sw $a2, 4($sp)
	#	sw $a3, 0($sp)
		
	request_again:
	#Nhap ngay
		li	$v0, 4
		la	$a0, request1
		syscall
		
		li	$v0, 8
		la	$a0, day
		la	$a1, 3			
		syscall
		move	$t0, $a0
	#Nhap thang 
		li	$v0, 4
		la	$a0, request2
		syscall
		
		li	$v0, 8
		la	$a0, month
		la	$a1, 3			
		syscall
		move	$t1, $a0
	#Nhao nam
		li	$v0, 4
		la	$a0, request3
		syscall
		
		li	$v0, 8
		la	$a0, year
		la	$a1, 5		
		syscall
		move	$t3, $a0
		
	# luu tham so 
	
		
		
		
	
	
	
	
	
	
