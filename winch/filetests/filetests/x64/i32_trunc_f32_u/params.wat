;;! target = "x86_64"

(module
    (func (param f32) (result i32)
        (local.get 0)
        (i32.trunc_f32_u)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 f30f1144240c         	movss	dword ptr [rsp + 0xc], xmm0
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 f30f104c240c         	movss	xmm1, dword ptr [rsp + 0xc]
;;      	 41bb0000004f         	mov	r11d, 0x4f000000
;;      	 66450f6efb           	movd	xmm15, r11d
;;      	 410f2ecf             	ucomiss	xmm1, xmm15
;;      	 0f8315000000         	jae	0x42
;;      	 0f8a30000000         	jp	0x63
;;   33:	 f30f2cc1             	cvttss2si	eax, xmm1
;;      	 83f800               	cmp	eax, 0
;;      	 0f8d1d000000         	jge	0x5d
;;   40:	 0f0b                 	ud2	
;;      	 0f28c1               	movaps	xmm0, xmm1
;;      	 f3410f5cc7           	subss	xmm0, xmm15
;;      	 f30f2cc0             	cvttss2si	eax, xmm0
;;      	 83f800               	cmp	eax, 0
;;      	 0f8c0e000000         	jl	0x65
;;   57:	 81c000000080         	add	eax, 0x80000000
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   63:	 0f0b                 	ud2	
;;   65:	 0f0b                 	ud2	