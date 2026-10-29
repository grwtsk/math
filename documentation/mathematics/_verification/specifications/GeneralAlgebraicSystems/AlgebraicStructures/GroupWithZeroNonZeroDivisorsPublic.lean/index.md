# Verification target: Group With Zero Non Zero Divisors Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30a0b41b5e2f0b9b830b986b96af3425179f3638",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30a0b41b5e2f0b9b830b986b96af3425179f3638`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Regular` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Irreducible.coe_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/irreducible-coe-ne-zero.md) | 41 | `result-track:6dc5b1fad121de833f1e0286891f25797c6f5ec3998d36a8ef4984d90f5d40b1` |
| 2 | `def` | [nonZeroDivisorsLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsleft.md) | 50 | `declaration-track:7a7969d1596d71352e8137fddea6032b878354f9750fb8480aa8fdd193b079cc` |
| 3 | `lemma` | [mem_nonZeroDivisorsLeft_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisorsleft-iff.md) | 56 | `result-track:a496e85ee29da39f0ae2ec76c776c3453d0d19d9185af1c5cc90eff968f075ac` |
| 4 | `lemma` | [notMem_nonZeroDivisorsLeft_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/notmem-nonzerodivisorsleft-iff.md) | 58 | `result-track:fd0a791096b71909ff82f1f49e83a20d2e3e35b09c9a5766118ff313f189dbf2` |
| 5 | `def` | [nonZeroDivisorsRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsright.md) | 64 | `declaration-track:b610beeeb90a9f5543794729bc1c7526f1c50e1b6ab6cf2da3b002c21e35dfb9` |
| 6 | `lemma` | [mem_nonZeroDivisorsRight_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisorsright-iff.md) | 70 | `result-track:2aeb4e58b66a604bdf3d0b172a873a7c44abbc16b5529a6847aa9150f90a9591` |
| 7 | `lemma` | [notMem_nonZeroDivisorsRight_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/notmem-nonzerodivisorsright-iff.md) | 72 | `result-track:dabcc0c499e40c7af0cf7dbf8b053028229b2b5d2235a103a6c6fbb749248f54` |
| 8 | `lemma` | [nonZeroDivisorsLeft_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsleft-eq-right.md) | 76 | `result-track:c502d15686d7971a20928587d8515b60f1716da97441cfbfa4852773a4b9146c` |
| 9 | `lemma` | [coe_nonZeroDivisorsLeft_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/coe-nonzerodivisorsleft-eq.md) | 80 | `result-track:fca7fe74452bf52fbaab3269742424bdd018e353e3de11f96cc26760043f5c99` |
| 10 | `lemma` | [coe_nonZeroDivisorsRight_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/coe-nonzerodivisorsright-eq.md) | 88 | `result-track:d22aa3b1c9028930b993e616b5818aa22070750aebeee7037de9e9f3d38975b9` |
| 11 | `def` | [nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisors.md) | 100 | `declaration-track:1c485452736c329a045b9ee9e851f794d47a27c483062687936f14b801b5ed0b` |
| 12 | `def` | [nonZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerosmuldivisors.md) | 110 | `declaration-track:b52899f71e7f2d99ddd72a8c5d7f070f23db69e7021775bbc159b93ab6239af2` |
| 13 | `lemma` | [nonZeroDivisorsLeft_eq_nonZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsleft-eq-nonzerosmuldivisors.md) | 124 | `result-track:c994e654037bf26bd18ada117d6af00dfdc79d8e99fc7675f4d6ee4ad1f2fe60` |
| 14 | `theorem` | [mem_nonZeroDivisors_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-iff.md) | 127 | `result-track:9361ac55207881df3df58e663aeb4649f3378ffc29164690a4f5e201f547d453` |
| 15 | `theorem` | [mem_nonZeroDivisors_iff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-iff-source-edition-2.md) | 130 | `result-track:a0e57a2a66fd8a1a8af1031d659ec3c5b9d4fea4fd62c3eaebea0fa535eb1e43` |
| 16 | `lemma` | [notMem_nonZeroDivisors_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/notmem-nonzerodivisors-iff.md) | 133 | `result-track:6cc91fd2bb2e465c7a15de35c6b0723e644eb49b699fb26516f4b0ab7ed1e182` |
| 17 | `theorem` | [mul_left_mem_nonZeroDivisorsLeft_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-left-mem-nonzerodivisorsleft-eq-zero-iff.md) | 137 | `result-track:56c3537a0464518b15ac1935cda1ff953a2b9eb6fb0e24bf8e6bec9ae8eff5a5` |
| 18 | `theorem` | [mul_right_mem_nonZeroDivisorsRight_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-right-mem-nonzerodivisorsright-eq-zero-iff.md) | 141 | `result-track:3a5a6c032fe296a73541da111b3ce723dba5875ab12f5cd5b9baba1956596500` |
| 19 | `theorem` | [mul_right_mem_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-right-mem-nonzerodivisors-eq-zero-iff.md) | 145 | `result-track:a8c1dad960a86766ca09b5b873f472c63264588d37412855e423e3144a4ee9e7` |
| 20 | `theorem` | [mul_right_coe_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-right-coe-nonzerodivisors-eq-zero-iff.md) | 149 | `result-track:24a18bd1871a1d65de38a13e7dcc32df41dce3f43f1e6700f51043f86b19f01b` |
| 21 | `lemma` | [IsUnit.mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/isunit-mem-nonzerodivisors.md) | 152 | `result-track:498d5831d2d5d8251c72799041ca394184ccaa5c4d3dd183e2544069f2de8bd7` |
| 22 | `lemma` | [isUnit_le_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/isunit-le-nonzerodivisors.md) | 156 | `result-track:dedaadfe4ce9287625af3d985018ca528b6c3c35319e3eab3023e0368d595881` |
| 23 | `lemma` | [mul_mem_nonZeroDivisors_of_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-mem-nonzerodivisors-of-mem-nonzerodivisors.md) | 158 | `result-track:de3cf056e6914f7d8e8b651a1803ea5516eb8acd0d2138c648cda821d433a14d` |
| 24 | `theorem` | [zero_notMem_nonZeroDivisorsLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/zero-notmem-nonzerodivisorsleft.md) | 165 | `result-track:fc6808f8f391a8e2e0b7c6de68c47b84f8a43d5b59b255e1e34e46a752d1e694` |
| 25 | `theorem` | [zero_notMem_nonZeroDivisorsRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/zero-notmem-nonzerodivisorsright.md) | 168 | `result-track:2f249d8eca2f177ea4314405d1f6744c20685051c601a44b173aefb857f4c068` |
| 26 | `theorem` | [zero_notMem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/zero-notmem-nonzerodivisors.md) | 171 | `result-track:d0e64c2c00dc0f9ec0ce367d590e7838bc175710e6c9840fdc4d21489ba28cb8` |
| 27 | `theorem` | [nonZeroDivisors.ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisors-ne-zero.md) | 173 | `result-track:c9794742d3cb659add660187595145a8a3738425ca9d8977d6d12d8e03a8ae29` |
| 28 | `theorem` | [nonZeroDivisors.coe_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisors-coe-ne-zero.md) | 177 | `result-track:3f5ae7ddb5347d689fece654e5bfba57ef7ae1b35417bad5594a5a7e4290fd55` |
| 29 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/instance-source-edition-2.md) | 179 | `declaration-track:b013e2fb78f040881c78bd174b34e96dc11d818fe67c31164a580af6e85281e1` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/instance.md) | 184 | `declaration-track:98234b7def47b1eacea6cd22a70494ca1d1de626d87193f9926b0c7d30bc263b` |
| 31 | `theorem` | [eq_zero_of_ne_zero_of_mul_right_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/eq-zero-of-ne-zero-of-mul-right-eq-zero.md) | 194 | `result-track:27563a28f966d53c884aaa46c1fbf222274b9d256ced2d157bc17756a9992a0a` |
| 32 | `theorem` | [eq_zero_of_ne_zero_of_mul_left_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/eq-zero-of-ne-zero-of-mul-left-eq-zero.md) | 197 | `result-track:ea7a13a2d642206c7e8b70d389c1080d7b30252ada3840c3ed12533f15d5d1c8` |
| 33 | `theorem` | [mem_nonZeroDivisors_of_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-of-ne-zero.md) | 200 | `result-track:62e9ea5f926213ba1590cdfe8d1872f34a49e1d725aa126eb9e4b7f1f1eaf7a7` |
| 34 | `lemma` | [mem_nonZeroDivisors_iff_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-iff-ne-zero.md) | 204 | `result-track:b97e16bb20946b20b7056de276e5840339c0d22fda5553ac4cae87c90bf62078` |
| 35 | `theorem` | [le_nonZeroDivisors_of_noZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/le-nonzerodivisors-of-nozerodivisors.md) | 207 | `result-track:da2aa945f5197917ccfd715122cc50734d9f25b67f841ccfca038bbf24cb4c7a` |
| 36 | `theorem` | [powers_le_nonZeroDivisors_of_noZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/powers-le-nonzerodivisors-of-nozerodivisors.md) | 211 | `result-track:4980ac45cb176e4d957602710c84ad5e205222fe370dd8bcd543e350eabd3765` |
| 37 | `lemma` | [IsLeftRegular.mem_nonZeroDivisorsLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/isleftregular-mem-nonzerodivisorsleft.md) | 216 | `result-track:b60169daae39e00bb559ef42f2e6e064fa2905da6e4060689dc5f642cc0a664a` |
| 38 | `lemma` | [IsRightRegular.mem_nonZeroDivisorsRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/isrightregular-mem-nonzerodivisorsright.md) | 219 | `result-track:0385e596c5f44b4717412811fb3f6e5f911ffb9c56d77d4b5f86abbe21e0a084` |
| 39 | `lemma` | [IsRegular.mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/isregular-mem-nonzerodivisors.md) | 222 | `result-track:36f7a749ed52698d92dc8024dbbc8750075535cece16f7b36a0968f70e5a72b0` |
| 40 | `lemma` | [noZeroDivisors_iff_forall_mem_nonZeroDivisorsLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nozerodivisors-iff-forall-mem-nonzerodivisorsleft.md) | 225 | `result-track:17b82588ff718feee501ddfca3b23b32018f3fabbee513d63b07e2d76540bfa9` |
| 41 | `lemma` | [noZeroDivisors_iff_forall_mem_nonZeroDivisorsRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nozerodivisors-iff-forall-mem-nonzerodivisorsright.md) | 229 | `result-track:f47cfb76e3d79821c10700d62397fb430bb691cd482fe999be3386fe6537cbe5` |
| 42 | `lemma` | [noZeroDivisors_iff_forall_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nozerodivisors-iff-forall-mem-nonzerodivisors.md) | 233 | `result-track:9f80cee8cb42c0765c86190cf86171762437dd5bbbe5b98611d2326cba85970d` |
| 43 | `lemma` | [IsSMulRegular.mem_nonZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/issmulregular-mem-nonzerosmuldivisors.md) | 237 | `result-track:1fdb2f357c162cd2e63ddb684d8cf8163ce1b1938e244c542e8399736fe1feb9` |
| 44 | `lemma` | [isSMulRegular_iff_mem_nonZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/issmulregular-iff-mem-nonzerosmuldivisors.md) | 241 | `result-track:2364cd6a7118311bf5600525530f5e858be7b78aae8c5ad1f6b1aa485aa1aacb` |
| 45 | `theorem` | [map_ne_zero_of_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/map-ne-zero-of-mem-nonzerodivisors.md) | 248 | `result-track:e49911e68d4c2cca9f66c52c8e0aed40de3a3fef9a7be31e08cf8e28bb3150e2` |
| 46 | `theorem` | [map_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/map-mem-nonzerodivisors.md) | 252 | `result-track:f8aae58e7d366b26295a28564703e158fba706f79d06c805445dafe473beb889` |
| 47 | `theorem` | [MulEquivClass.map_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mulequivclass-map-nonzerodivisors.md) | 257 | `result-track:1ab7339abde643ace6a2d5cc2546d3006bbd6cb16f2d3e1a4a4fbb728cb536e0` |
| 48 | `theorem` | [map_le_nonZeroDivisors_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/map-le-nonzerodivisors-of-injective.md) | 267 | `result-track:064577f53a20b18f098be0f8b2ac1309d753ea897c86df452cb84cd8030dd1c1` |
| 49 | `theorem` | [nonZeroDivisors_le_comap_nonZeroDivisors_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisors-le-comap-nonzerodivisors-of-injective.md) | 275 | `result-track:d2fe5d0b4b0b888938bbd0a01b8211069b97eecdbd863c4ee07ebffe49bd9619` |
| 50 | `theorem` | [mem_nonZeroDivisors_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-of-injective.md) | 281 | `result-track:64d3addff90e35023f5971e5d17dadc826268da501f86b548283eaa0ec547242` |
| 51 | `theorem` | [comap_nonZeroDivisors_le_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/comap-nonzerodivisors-le-of-injective.md) | 286 | `result-track:117302e9427662694612d1354121c17fc52a120c6e15780a641245998714d9ba` |
| 52 | `lemma` | [nonZeroDivisorsLeft_eq_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsleft-eq-nonzerodivisors.md) | 295 | `result-track:29df01381f002419f66b280357a8292f1a1d710e30440a5d839aeb800bb0053a` |
| 53 | `lemma` | [nonZeroDivisorsRight_eq_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsright-eq-nonzerodivisors.md) | 298 | `result-track:cc02d8dbf7f65bbe315202616af99136e4e5d279c1c42ba742262dd39f182f0c` |
| 54 | `lemma` | [nonZeroDivisorsRight_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsright-eq-left.md) | 301 | `result-track:f17a3b2f613130ab3889100067449fe377376d4d8b3d5c17d716cfeab6fb5617` |
| 55 | `theorem` | [mem_nonZeroDivisors_iff_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-iff-left.md) | 304 | `result-track:469c3634e077704f817db49c91c0dcf063aed83f1b6bd5fdb19b8c96953bf862` |
| 56 | `theorem` | [mem_nonZeroDivisors_iff_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerodivisors-iff-right.md) | 307 | `result-track:5ea6551ae99e375975d4b3b7c8c38ec6b47355d92dc987f81476c81483729b7b` |
| 57 | `lemma` | [notMem_nonZeroDivisors_iff_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/notmem-nonzerodivisors-iff-left.md) | 310 | `result-track:74cc0a5e981a9799b2d5fbb994cf86f52aabd8831274964f5f4775d7d3a0bbea` |
| 58 | `lemma` | [notMem_nonZeroDivisors_iff_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/notmem-nonzerodivisors-iff-right.md) | 313 | `result-track:16d2c332fc388a98e21d25fc25416b013f7ee4abd3e9a00ca2f76121d2ee5214` |
| 59 | `lemma` | [mul_left_mem_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-left-mem-nonzerodivisors-eq-zero-iff.md) | 316 | `result-track:549c7a15ef3df41ffbedf3856b32a154a0019350ad8e1484beb3d823632b288d` |
| 60 | `lemma` | [mul_left_coe_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-left-coe-nonzerodivisors-eq-zero-iff.md) | 320 | `result-track:043f315c8338c524b4978c4c51005b035cfed978b0f8865d00ab09835720bd13` |
| 61 | `lemma` | [mul_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mul-mem-nonzerodivisors.md) | 323 | `result-track:4af9b977b90458e2e9883ba73374c23dfa07d5f0339fb9f301e7dec06e973be0` |
| 62 | `theorem` | [nonZeroDivisors_dvd_iff_dvd_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisors-dvd-iff-dvd-coe.md) | 331 | `result-track:79f381bec1b1e9b1f41c599353d4211cf6364c2dcc5c69275be47ac7d2659606` |
| 63 | `lemma` | [prod_mem_nonZeroDivisors_of_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/prod-mem-nonzerodivisors-of-mem-nonzerodivisors.md) | 337 | `result-track:82a4e886e1f1f106a3819fb591e5f6bbd78c79f11bff38db62c654a6cc8cf3c4` |
| 64 | `def` | [nonZeroDivisorsEquivUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisorsequivunits.md) | 349 | `declaration-track:62b4f792814a6a7bbe7687a49b46ba8b6462d2591ee9cc633c79799982f6756f` |
| 65 | `lemma` | [isUnit_of_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/isunit-of-mem-nonzerodivisors.md) | 355 | `result-track:bfe730dff68b8f5661af192714e28c3f58f0ca617cd9ee05d5cdf7ff745dc2e1` |
| 66 | `lemma` | [mem_nonZeroSMulDivisors_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mem-nonzerosmuldivisors-iff.md) | 366 | `result-track:2fb5b50f59337de98397f19a2eaae14646000fee4df2fa189864ba898f50d6ef` |
| 67 | `def` | [unitsNonZeroDivisorsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/unitsnonzerodivisorsequiv.md) | 379 | `declaration-track:c28195bfa32a81dd7dd8b6ede0bbdffc19147ff7ee7a922c5b39cbd8675f75e5` |
| 68 | `lemma` | [nonZeroDivisors.associated_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/nonzerodivisors-associated-coe.md) | 384 | `result-track:77f0b2769eb9b090d34446ad4c8397c833a0e077dd52bf5459c41c6e4edd086b` |
| 69 | `theorem` | [mk_mem_nonZeroDivisors_associates](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/mk-mem-nonzerodivisors-associates.md) | 392 | `result-track:95ec1c9de3315c5c092920c03dd254fdc67932cc1b329167ce50a6e19f1886d2` |
| 70 | `def` | [associatesNonZeroDivisorsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/associatesnonzerodivisorsequiv.md) | 405 | `declaration-track:c9a92398eea60e2c70d7303a25ccbcb45a721759582ca5020131a854b6e3c3c7` |
| 71 | `lemma` | [associatesNonZeroDivisorsEquiv_mk_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/associatesnonzerodivisorsequiv-mk-mk.md) | 418 | `result-track:1d606d69ce92f7c4e69a5e231a91d58618fc595bea3c8f3dde309f027810392e` |
| 72 | `lemma` | [associatesNonZeroDivisorsEquiv_symm_mk_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisorsPublic.lean/declarations/associatesnonzerodivisorsequiv-symm-mk-mk.md) | 423 | `result-track:3b34a0f1b692411898dab6944f9e48ce70c0cfc0dc93b155695e46963841a61c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b837c8704aad06d9fb185dd01c06c94db0b6b3d3e8235d27219abcda3df7f078 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
