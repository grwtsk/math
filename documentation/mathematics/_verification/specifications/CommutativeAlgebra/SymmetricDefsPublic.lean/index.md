# Verification target: Symmetric Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26175eda9c0094593161c29a04242e7b631874ff",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26175eda9c0094593161c29a04242e7b631874ff`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm.md) | 70 | `declaration-track:026c81b7b96ecc7225cc55ad9d5ed0e0517bd429ef8f5aa1bf6b7f0290b5b695` |
| 2 | `lemma` | [esymm_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-zero.md) | 73 | `result-track:e740e9cce76aa14dc95e58108d76c3dfcd44904efbba9bc145a3301a1f2bc05b` |
| 3 | `lemma` | [esymm_of_card_lt](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-of-card-lt.md) | 77 | `result-track:891a2d1e0504f47a988adf1d1072c411c007d1b88de7001a35ff4f8f100c1b29` |
| 4 | `theorem` | [_root_.Finset.esymm_map_val](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/root-finset-esymm-map-val.md) | 81 | `result-track:138abddbe8489925259f3a680e86b05c4602b03f4f8a7f086d39efc3402b9be5` |
| 5 | `lemma` | [pow_smul_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/pow-smul-esymm.md) | 86 | `result-track:9bd0390c96b2d4588d14ef05d034412892712ed75801f571ef93663d4b200091` |
| 6 | `lemma` | [esymm_pair_one](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-pair-one.md) | 96 | `result-track:5becffe95eb70a047750b8dee1f921d52e2e726d055e369eeb50478f1a223988` |
| 7 | `lemma` | [esymm_pair_two](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-pair-two.md) | 100 | `result-track:3ce55bdacaa0f2ef91f351b609bdb4bd1e9d6a0fdaffc87578c6ddabaa74d0e5` |
| 8 | `def` | [IsSymmetric](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/issymmetric.md) | 112 | `declaration-track:5d7fa91fdb9f69fbee43cc72136f36e5817e32b5b21645d333e90514de64a3e2` |
| 9 | `def` | [symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/symmetricsubalgebra.md) | 116 | `declaration-track:d78c7d1eceddccbdb8ac6c8f74d0147ae6a948fe2f97e80ff29645ac2dd2736d` |
| 10 | `theorem` | [mem_symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/mem-symmetricsubalgebra.md) | 123 | `result-track:b8722618f107568279f53c9434a05cd1e681a405526d38e8574e712923bcc348` |
| 11 | `theorem` | [C](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/c.md) | 134 | `result-track:6081cb35f9df57f3f6e2dc06b298a18c231eff19e8a3795aa40e66d71dbd7f16` |
| 12 | `theorem` | [zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/zero.md) | 138 | `result-track:a1be9d130ae6d93738e7963e0042d5654f8cd066eeb7a54939f242d52124bacc` |
| 13 | `theorem` | [one](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/one.md) | 142 | `result-track:5329004674dc697868f84b45ac68d9b19203b3a7161fce2f58f305223d4efae6` |
| 14 | `theorem` | [add](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/add.md) | 145 | `result-track:76cb18385d7127897fe79dcdc9e768b1c9d5bc9426900e4fedbd94a6591737ed` |
| 15 | `theorem` | [mul](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/mul.md) | 148 | `result-track:d2ef10b54d408503c5a72b213c5d88d0980ed8b9b84b41f117bbc5cb8369765d` |
| 16 | `theorem` | [smul](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/smul.md) | 151 | `result-track:7c64c274b71d93f8f57f4aff162cd07166d8030336825570941c44fe60ca862f` |
| 17 | `theorem` | [map](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/map.md) | 155 | `result-track:8c10557d32c83185a9083e5d260891acd83d70ff4cfb67244fb59558deadaf1d` |
| 18 | `theorem` | [rename](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/rename.md) | 158 | `result-track:77ce5298ad8ebfe75b785e7963eba93309035082d9ae33f8f6c1f91ce6e08e24` |
| 19 | `theorem` | [_root_.MvPolynomial.isSymmetric_rename](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/root-mvpolynomial-issymmetric-rename.md) | 164 | `result-track:a74033476abbf47fee7dec5e2877c4885263600e5b7284f840654ccd6c6a46b5` |
| 20 | `theorem` | [neg](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/neg.md) | 174 | `result-track:1b76edd25864c83d45ee2e29d60bf7fa3fe036043a546ccbf5188be70f3d51cf` |
| 21 | `theorem` | [sub](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/sub.md) | 177 | `result-track:c367aa7739a21cce3464f571257d374929e038b838343f378c5ee4185468ca68` |
| 22 | `def` | [renameSymmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/renamesymmetricsubalgebra.md) | 187 | `declaration-track:393df4334dcff9839988a294d3e24344efeace940499054ea79bf1d3a8034e00` |
| 23 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-source-edition-2.md) | 203 | `declaration-track:65b9e04ccabf577d17dceaa7483d99bbe4957f78bb7f7399d65715802ce4474f` |
| 24 | `def` | [esymmPart](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymmpart.md) | 210 | `declaration-track:5ae56e564972a073ef7cc82d12043c535ae0b8ece9fc63702aa1a2b1d660af09` |
| 25 | `theorem` | [esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-eq-multiset-esymm.md) | 214 | `result-track:c849877d239c9c591be910ecd9f514071279bd8dd3a38ee7bf10f889652c5efc` |
| 26 | `theorem` | [aeval_esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/aeval-esymm-eq-multiset-esymm.md) | 217 | `result-track:bfe842afbf7d7a55823e16b58860d02cdf751c4baa2f1e3c02886215b29d7657` |
| 27 | `theorem` | [esymm_eq_sum_subtype](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-eq-sum-subtype.md) | 222 | `result-track:dc7709238123cf6bb92138aead993ee8ea693eda3b8191fbfba8c40026beb230` |
| 28 | `theorem` | [esymm_eq_sum_monomial](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-eq-sum-monomial.md) | 227 | `result-track:4e773b6ae94290832db839fdc9797c40a64ac9c3ff72d6075d78c1823df7573e` |
| 29 | `theorem` | [esymm_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-zero-source-edition-2.md) | 232 | `result-track:f250854d243a8d90b997855ce88e0549595ae3eafa2b4ce1821dddef5215e6da` |
| 30 | `theorem` | [esymm_one](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-one.md) | 236 | `result-track:cb53afa39662c7cc58cace859bed7a322873cb5cf0f02285b67daf43daef044d` |
| 31 | `theorem` | [esymmPart_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymmpart-zero.md) | 238 | `result-track:250318b3812cc79b8dce32afbd3cc05d7eb1464c53fe67433c00baa53d537941` |
| 32 | `theorem` | [esymmPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymmpart-indiscrete.md) | 241 | `result-track:c07a822b7358d7c4a32034b6b8f8b2c9ce8513adc8859ac7758e677b3dd9137d` |
| 33 | `theorem` | [map_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/map-esymm.md) | 244 | `result-track:9bc7bbb51f448cd3f358417d359252a68f1b514e1f9c8f415a0fa1768f2a31d0` |
| 34 | `theorem` | [rename_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/rename-esymm.md) | 247 | `result-track:de7457c661df71e5185337ed22a68a561a5be49d4efab2b4bcc7e8e5810d4b6c` |
| 35 | `theorem` | [esymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/esymm-issymmetric.md) | 255 | `result-track:2df5d8d973f20f3f350ad10971a16b0620382d8ddd1431f9d5b639598b9b3f82` |
| 36 | `theorem` | [support_esymm''](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/support-esymm.md) | 259 | `result-track:46b69dfe49137537e3656c075e56869558606765440399d25fac3c6bc62b1117` |
| 37 | `theorem` | [support_esymm'](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/support-esymm-source-edition-2.md) | 276 | `result-track:4bed025bfb7b9423fb6520d55945782bc3c978dfb428f696fc7b992ecc25e344` |
| 38 | `theorem` | [support_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/support-esymm-source-edition-3.md) | 283 | `result-track:94e398501e2b7f79461a4d44eb67bd3000ee1a774961e3832cd62e77c7dba915` |
| 39 | `theorem` | [degrees_esymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/degrees-esymm.md) | 288 | `result-track:33c05bfa74dedd8da5a8c657916036363d2da6f6e26ebc65576065d405b07e4f` |
| 40 | `def` | [hsymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymm.md) | 313 | `declaration-track:305b8b62ed126223bd5846b07171042ec88e23b8ee68592551d2457d70e7bd68` |
| 41 | `def` | [hsymmPart](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymmpart.md) | 317 | `declaration-track:d245710c59c6a76b80c17f9cc2242f761fc2f3b6f4745e17e836f015a2e1c691` |
| 42 | `theorem` | [hsymm_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymm-zero.md) | 320 | `result-track:19510614978eb265c8286c1c2cba1b4a1d398811f4cfffc1ab03ad00b6c7be9f` |
| 43 | `theorem` | [hsymm_one](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymm-one.md) | 323 | `result-track:c4492fda2881dcf328c4b32044bf162a91a8f6f3db4173e0174717e3e4139253` |
| 44 | `theorem` | [hsymmPart_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymmpart-zero.md) | 328 | `result-track:f4f2bd648063db6169ad172ec063ea654cd5157a221b42975eaeed1694b54aba` |
| 45 | `theorem` | [hsymmPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymmpart-indiscrete.md) | 331 | `result-track:95f29834d5c1627867fd3cace48343ec51daeab43ec38c9e3ffd47b778d960c9` |
| 46 | `theorem` | [map_hsymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/map-hsymm.md) | 334 | `result-track:3cd2a633ad0304c28b66bd1b3a827bce55902fd9d27e6c5d3d4ff5e0d3ef2d1d` |
| 47 | `theorem` | [rename_hsymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/rename-hsymm.md) | 337 | `result-track:d5c2d2b38f975601d4833b8cf3bae896a864a62a1cc76d6128a932492e2e69fa` |
| 48 | `theorem` | [hsymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/hsymm-issymmetric.md) | 342 | `result-track:7b64862bb97da7e0376ab0eb7f4df5ee1ffb3acf1d7a8331658c4ba6ab550f00` |
| 49 | `def` | [psum](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psum.md) | 352 | `declaration-track:8310d0836bc43657ee64da822f79863a2f80d620bf584d3f74f171280097d398` |
| 50 | `def` | [psumPart](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psumpart.md) | 356 | `declaration-track:098913d937ced590985d3011dad89881f3113b7dc4fddd2a2082ff26f98d4d63` |
| 51 | `theorem` | [psum_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psum-zero.md) | 359 | `result-track:b1bdb39e36e271e77f84c468b902860aa723191e6179e8c52c6e39a5f3480d94` |
| 52 | `theorem` | [psum_one](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psum-one.md) | 362 | `result-track:6b605d93445dd8903a390251bd4da0311c7febf06825aa8eaa6c3804826bd783` |
| 53 | `theorem` | [psumPart_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psumpart-zero.md) | 365 | `result-track:4b54c73f30e4892d793f1ba14a03a86545c65c6a35b1c10fb54be43d3abdf8e0` |
| 54 | `theorem` | [psumPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psumpart-indiscrete.md) | 368 | `result-track:51e0f3259f20757bd4e94e8b04a324a18b6cefb20bf1c34ace0184ad28efc2db` |
| 55 | `theorem` | [rename_psum](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/rename-psum.md) | 372 | `result-track:176f25a493576b2335f5d28ed9f5d140dd3cd52e4df90fbe13e5096fcda87a88` |
| 56 | `theorem` | [psum_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/psum-issymmetric.md) | 375 | `result-track:5f7aaca3c24f26a0ded7f70f57d12002a204be3768a8a93200dcb201156f81d7` |
| 57 | `def` | [msymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/msymm.md) | 386 | `declaration-track:0b950d8097ac8174c6e394a4f71cb2f5c8d7a1545369571c48c1beac4eac351f` |
| 58 | `theorem` | [msymm_zero](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/msymm-zero.md) | 390 | `result-track:b05d4898f368a49e61a48eb70a77b2e6971f9bf0132bd822478401a6dbaca290` |
| 59 | `theorem` | [msymm_one](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/msymm-one.md) | 395 | `result-track:584de3ab01133980f4efa520fd355d860fad1e9c03f7e035eb23cfce9efbdac2` |
| 60 | `theorem` | [rename_msymm](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/rename-msymm.md) | 410 | `result-track:3c391e84932fe23c3e17c5b50b0b3484d18663355150cddf4228acbdbf6c2d12` |
| 61 | `theorem` | [msymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsPublic.lean/declarations/msymm-issymmetric.md) | 418 | `result-track:5908f58f02eec54beb510c854c53eead3a41c3877b28966c430b85fa04449f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d4a89fef359ee23e98b15f2dd1cf6c1bd879b120964acfa534ffc97a83097fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Defs/Varianta18439e5a0eba5b96de8af85b8e43dd9b37e2214ab2214ed30175f9a28b4d80c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
