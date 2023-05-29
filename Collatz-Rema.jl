### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ edc0884a-fe22-11ed-285a-8d27f2e0b0f6
md"""
# Membuat Program Collatz Conjecture 
Rema Bagos Pudyastowo\
19/445618/PA/19442
"""


# ╔═╡ d4fb10fd-32b6-42f6-b3e1-2f38c2d32061
md"""
# Syarat 

+ Apabila ganjil >> 3n +1 
+ Apabila Genap >> n/2 
+ Bilangan Bulat (integer, tidak float, tidak string)
    + Positif 
    + Tidak mengandung Bilangan Imajiner
    + Pecahan yang bentuk sedeerhananya Bulat
"""

# ╔═╡ d73ffdc2-bd8c-4371-afac-c784d2b19b50
md"""
# Kode Penyelesaian
"""

# ╔═╡ 47c8697b-7a1b-4571-9d9d-6502e5589d87
# membuat fungsi 

function collatz_conjecture(n)
	if n>0 
	   sequence = [n]
	 while n>1 
		 if isodd(n)
			 n=3*n+1
		 else 
			 n = n ÷ 2
		 end
		 #memasukkan bilangan  ke array
		 push!(sequence, n)
	 end
	return Dict("number" => sequence[1], "steps" => length(sequence), "squence" => sequence)
	else 
		error("Error : Angka yang anda masukkan harus bilangan bulat positif ") 
	end
end

# ╔═╡ 4c2cfdc7-d81e-4e93-8f6c-a79aeb46a79d
collatz_conjecture(9)

# ╔═╡ Cell order:
# ╠═edc0884a-fe22-11ed-285a-8d27f2e0b0f6
# ╠═d4fb10fd-32b6-42f6-b3e1-2f38c2d32061
# ╠═d73ffdc2-bd8c-4371-afac-c784d2b19b50
# ╠═47c8697b-7a1b-4571-9d9d-6502e5589d87
# ╠═4c2cfdc7-d81e-4e93-8f6c-a79aeb46a79d
