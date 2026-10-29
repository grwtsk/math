# Verification target: Symmetric Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa29b111317e79d40737deb303ddba3d28e2dcd9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa29b111317e79d40737deb303ddba3d28e2dcd9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Partition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-source-edition-2.md) | 74 | `declaration-track:d0a7cbd3f0b6546b5a26a4e4941b88f65a4bf46fc56aa7d846267d9b93983f9f` |
| 2 | `theorem` | [Symmetric Defs Namespaced](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-map-val.md) | 77 | `result-track:6e4fc5e9fcc573ce172f4bc61505f2ac5d868a7213f72fff0eda6df6dbbf1e02` |
| 3 | `lemma` | [pow_smul_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/pow-smul-esymm.md) | 82 | `result-track:cb78c91a392c72266e1802c7d5d3254d51e9ab6d96baedf26a973e8bf2c09e19` |
| 4 | `lemma` | [esymm_pair_one](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-pair-one.md) | 92 | `result-track:c63b42b0a9390fddc0b2847c81f2a3d5e65542528a55ccf6b4c7461f6c60589b` |
| 5 | `lemma` | [esymm_pair_two](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-pair-two.md) | 96 | `result-track:b659fac5d5306b7965f117640bcf07dcdc3a0feb7a09e06970d9af6e4846f208` |
| 6 | `def` | [IsSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/issymmetric.md) | 108 | `declaration-track:25c58b6b361de78a56b3b7157e00d1726a166288ab729433907c9a65a7afba3b` |
| 7 | `def` | [symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/symmetricsubalgebra.md) | 112 | `declaration-track:758d74bcd0924aededabceb2c1166c0455bdeaa52d1d434699e0c813e051994f` |
| 8 | `theorem` | [mem_symmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/mem-symmetricsubalgebra.md) | 119 | `result-track:9a2a035d2c5fd50d6359cc45430d13860151bbbf85ef14847a2a1843c0318839` |
| 9 | `theorem` | [C](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/c.md) | 130 | `result-track:a4f35e856d23f6cff3e7668f11240aa8abec7ee6eb5631a8b2c6ec27428ab469` |
| 10 | `theorem` | [zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/zero.md) | 134 | `result-track:2e9f296a29574885957469d20c0a94048173bef185add5854cb6a56f73517fae` |
| 11 | `theorem` | [one](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/one.md) | 138 | `result-track:ff71858323206b26211d6b5d4484d5c3e614a1f45dd97a36082a0ff17a15a704` |
| 12 | `theorem` | [add](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/add.md) | 141 | `result-track:e44080d4ded5213ad9482573daca983145837355d3e130ac86444dabdccc8034` |
| 13 | `theorem` | [mul](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/mul.md) | 144 | `result-track:30391647e986d06926675251fd65b83cf0b63355159af1d0306ac35f4bafa38e` |
| 14 | `theorem` | [smul](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/smul.md) | 147 | `result-track:266e7e788195540c3877ca96dcae2244923919fababdfa21031422290cf57e37` |
| 15 | `theorem` | [map](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/map.md) | 151 | `result-track:0e64e78efc87104daa208ce5e50a2c034b1e6e9052cdcee94ec305edb69f0855` |
| 16 | `theorem` | [rename](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/rename.md) | 154 | `result-track:803cff4bf8b85b390baad2ae137c9289e47fdd982e08f7afab1f5153e0fc9ebb` |
| 17 | `theorem` | [Symmetric Defs Namespaced](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/issymmetric-rename.md) | 160 | `result-track:19123eef2cfbe04b9bbaf82fd1dba3ff075d496cb766c0bfef80b1df14eead3c` |
| 18 | `theorem` | [neg](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/neg.md) | 170 | `result-track:b1e8155ee7d41b8930ae13d0ef9b2fe1f29417c94e91c745846d78fb03036d2b` |
| 19 | `theorem` | [sub](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/sub.md) | 173 | `result-track:d4572ba1b170cbc032e892e7cd3eeb8144b4e1552e996f95ce5dfba30cc6a556` |
| 20 | `def` | [renameSymmetricSubalgebra](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/renamesymmetricsubalgebra.md) | 182 | `declaration-track:2051abcbd7892e747c83d34d1fc88bee91b90f7ce25e064562cc71e312483f66` |
| 21 | `def` | [esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm.md) | 198 | `declaration-track:ab7886b8fde4b0ed60fa5f181db69c50a81f14d39452fbcb706761ac4b66a241` |
| 22 | `def` | [esymmPart](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymmpart.md) | 205 | `declaration-track:79622378ce509e92e1833f3bbd70c07ef1490bde2e36cfde200d47075c878f19` |
| 23 | `theorem` | [esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-eq-multiset-esymm.md) | 209 | `result-track:e49d6a85d4611c9f27779efafe1acf6b50357dfa6ab96cdeb06def9bf8426e23` |
| 24 | `theorem` | [aeval_esymm_eq_multiset_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/aeval-esymm-eq-multiset-esymm.md) | 212 | `result-track:856faca8d8f43d88d989ebaf250073e3884007fe0f38b9a890580f0fb69ce1c6` |
| 25 | `theorem` | [esymm_eq_sum_subtype](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-eq-sum-subtype.md) | 217 | `result-track:4b88967594b73e762ca111bf76ef5004e277a2dc8d0b1a5bb3663ba4e6f02f7c` |
| 26 | `theorem` | [esymm_eq_sum_monomial](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-eq-sum-monomial.md) | 222 | `result-track:c3d8b815ef1a9adc3379e2931c4c5260c6c331a5f14b52089336d317d83a6914` |
| 27 | `theorem` | [esymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-zero.md) | 228 | `result-track:a0f0c8eb51802274dfe3c66cfb68bb9612771d3312379f2a659174db028df9ad` |
| 28 | `theorem` | [esymm_one](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-one.md) | 232 | `result-track:eefce95aaecf6580247f149b274bddc054ab097d2ea5fbc00fe030542a3c8274` |
| 29 | `theorem` | [esymmPart_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymmpart-zero.md) | 234 | `result-track:584a972bb00c2d78a67fb1c733268908131af187c61c25cd023310205e663634` |
| 30 | `theorem` | [esymmPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymmpart-indiscrete.md) | 237 | `result-track:5121095a1cede880c2bd99f0ec98cbc301f7756e3188e1557437c53c82f3661b` |
| 31 | `theorem` | [map_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/map-esymm.md) | 240 | `result-track:5e87340f30c1bbb26909a6d620bd5de012410ea8cf41bb5b08522d0ea4f98f29` |
| 32 | `theorem` | [rename_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/rename-esymm.md) | 243 | `result-track:13f93324995009641b239665bbbd6283f8ca93f656d0c4d5732c0d250df6b5dc` |
| 33 | `theorem` | [esymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/esymm-issymmetric.md) | 254 | `result-track:930a4e3e5f1d467374185398ea2c6d4ab523c3eebd445f44530d29de02214fbb` |
| 34 | `theorem` | [support_esymm''](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/support-esymm-source-edition-2.md) | 258 | `result-track:8df75a650760120d5d0ce0aa4ee9b745ff9ef8294951975770587613f37571b6` |
| 35 | `theorem` | [support_esymm'](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/support-esymm-source-edition-3.md) | 282 | `result-track:f3c62d06dd12808b91fefe120b26e5e46015e1797720a15fedf94f3ad94ec717` |
| 36 | `theorem` | [support_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/support-esymm.md) | 289 | `result-track:8232ec00889e4be44921cf4b667da06797c2af96128a9e1f0de2fb2c8685ff7b` |
| 37 | `theorem` | [degrees_esymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/degrees-esymm.md) | 294 | `result-track:308da49041a56c6fcffcac4d924be059f7879e946f82e2aa13c25c16e76383c5` |
| 38 | `def` | [hsymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymm.md) | 323 | `declaration-track:199f211bf1686e75b68a9ac06ca1bea38c7accb4502d30648df9bb9569a00f5a` |
| 39 | `def` | [hsymmPart](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymmpart.md) | 327 | `declaration-track:1b872c310302fe86388f79db2d128820824eeaaab6d9d5ccda7fd0e464d2edc9` |
| 40 | `theorem` | [hsymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymm-zero.md) | 330 | `result-track:a81c33ddfe14917e2fd0f8222d39d70ff41f3558b212a5dd2c34799b0b9e62f6` |
| 41 | `theorem` | [hsymm_one](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymm-one.md) | 333 | `result-track:9e3d23525b8c7380c288942dba44ffcf9111a51195481b8df68967c3dad13758` |
| 42 | `theorem` | [hsymmPart_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymmpart-zero.md) | 338 | `result-track:93f4474890c436624dcc1764ff9309934252e4ad0ca75eea6cd22b7d70001089` |
| 43 | `theorem` | [hsymmPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymmpart-indiscrete.md) | 341 | `result-track:b8eba2a16ae26ae1f237fe599d436a24a5323f6b481cbddec3411ec688494358` |
| 44 | `theorem` | [map_hsymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/map-hsymm.md) | 344 | `result-track:479d88cb374586c7050fb2f96c3b49f26302012fdba611bc651211f103f5900e` |
| 45 | `theorem` | [rename_hsymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/rename-hsymm.md) | 347 | `result-track:164829b7fea8aafa6a7d6b2dcf3a9ad6823c7f4735030c4302fcce59fed0c6f1` |
| 46 | `theorem` | [hsymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/hsymm-issymmetric.md) | 352 | `result-track:79cee6204018514ac9aa77d3dc149f7e95eee871faf9f4960becd0e731be165b` |
| 47 | `def` | [psum](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psum.md) | 362 | `declaration-track:2381d12e730e0eee7e6f94de63cd90131fb4ad5570dfa0fc08a122bae355f6fb` |
| 48 | `def` | [psumPart](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psumpart.md) | 366 | `declaration-track:636b66be81f908228825cb776e7e24c94e1752b35c019404e8bc0fe75e5e727d` |
| 49 | `theorem` | [psum_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psum-zero.md) | 369 | `result-track:5cd9dcf2c0933fb339f26de90f94642432f04c563bbd0db4664da74320d612be` |
| 50 | `theorem` | [psum_one](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psum-one.md) | 372 | `result-track:a1a31e908f10924f39b808e0b3329d8d289059411a36cfe6d91d24b5d2add5c0` |
| 51 | `theorem` | [psumPart_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psumpart-zero.md) | 375 | `result-track:f0bad3ce7fb4523303a41ac3da770027ea80545dc77c6d99c4cdae2d7cd0d9c4` |
| 52 | `theorem` | [psumPart_indiscrete](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psumpart-indiscrete.md) | 378 | `result-track:e3d98f2456bb51d603a9384aadb67aa5e2579cc613991af326f9fa225de1e133` |
| 53 | `theorem` | [rename_psum](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/rename-psum.md) | 382 | `result-track:24666e8174873e7afdcee98519cfe0ac01d32d27c9ec69df2271a04614d75fe6` |
| 54 | `theorem` | [psum_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/psum-issymmetric.md) | 385 | `result-track:11b8d27dda8301a6cb4bd27d9db469667463fd36be443df312af9a1676ffe318` |
| 55 | `def` | [msymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/msymm.md) | 396 | `declaration-track:ae273802cb8469618e649d2f4d9a5ec4ab75cc3f56f7c63394a8b6a2f3c90620` |
| 56 | `theorem` | [msymm_zero](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/msymm-zero.md) | 400 | `result-track:9e6687cb34e79546f2b3fc09e10b5f2e28a568f9239169bcda44ee9f653d04eb` |
| 57 | `theorem` | [msymm_one](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/msymm-one.md) | 405 | `result-track:deafffe76b41d4a1d01f05a518bf701860705c3b62abd42ec0ed8cfe2b9235d0` |
| 58 | `theorem` | [rename_msymm](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/rename-msymm.md) | 420 | `result-track:738e46e8230298da2ed3b494f6f7d2a86948d9f77830ab97df6b6659d89ebf5c` |
| 59 | `theorem` | [msymm_isSymmetric](../../../../CommutativeAlgebra/SymmetricDefsNamespaced.lean/declarations/msymm-issymmetric.md) | 428 | `result-track:8339b900e8af6c5515b43178e1a05c48f66fceca8c6145533145f05b9a68feb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfe0d828cbb69431c53f988fb92536397f0f72d3680f4787803539f5ce80c1c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
