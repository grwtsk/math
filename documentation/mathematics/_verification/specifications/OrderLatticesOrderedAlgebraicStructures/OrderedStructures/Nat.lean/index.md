# Verification target: Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe790ed17edfc5fb85642b444b393262caac3a95`.

Source path: `GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasAntidiagonal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/insthasantidiagonal.md) | 27 | `declaration-track:0cb8b01fd66197544caf08795335a4b204e49cab3516119aa3ddbcd85fa5fa58` |
| 2 | `def` | [finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag.md) | 52 | `declaration-track:06a1683a340707a8624b2a62bb8972c1f9c1eb58cb32b46cfbd03ffd8a853370` |
| 3 | `theorem` | [mem_finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/mem-finmulantidiag.md) | 60 | `result-track:18b896effb16001de2e10b933ec12b393d86356f0ad44c91a846af2846da4214` |
| 4 | `theorem` | [finMulAntidiag_zero_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag-zero-right.md) | 81 | `result-track:ee015b249af018d40df351cef697cf90ee8698c497bba69c2e0240ea782bb9ff` |
| 5 | `theorem` | [finMulAntidiag_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag-one.md) | 84 | `result-track:19977147633d2759c60752cfadaa815870d58fce464aa58f99034f7f0c28438f` |
| 6 | `theorem` | [finMulAntidiag_zero_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag-zero-left.md) | 95 | `result-track:6457baed232dcf9c6db54fa66ac03de5cf035f394f54745ba134e5babda43817` |
| 7 | `theorem` | [dvd_of_mem_finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/dvd-of-mem-finmulantidiag.md) | 100 | `result-track:cb3c5de124fba700ad057d8b7464e3555782c5dc1adaaeb2e6179aa4dbadd4af` |
| 8 | `theorem` | [ne_zero_of_mem_finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/ne-zero-of-mem-finmulantidiag.md) | 106 | `result-track:0e11877ff092a7aa03a94f2ced2915a3a10113341caef48f51f29e1c6f3ecc8d` |
| 9 | `theorem` | [prod_eq_of_mem_finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/prod-eq-of-mem-finmulantidiag.md) | 110 | `result-track:061da3ed4d2970a270b3afa9c77e12f86cd0489948ff1833e9652fae105398f6` |
| 10 | `theorem` | [finMulAntidiag_eq_piFinset_divisors_filter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag-eq-pifinset-divisors-filter.md) | 114 | `result-track:94892eb3ef8ebb8160a057de5d10c40c2d913ecdf3408c9826ed0a7b7c629301` |
| 11 | `lemma` | [image_apply_finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/image-apply-finmulantidiag.md) | 127 | `result-track:41d36d2d1f0a91738b33fc3f7bf8dea68bb4696f927cb9d6872ea44e8c17267a` |
| 12 | `lemma` | [image_piFinTwoEquiv_finMulAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/image-pifintwoequiv-finmulantidiag.md) | 153 | `result-track:2745559e71d481fcdfb865c0e89329f2b5f0a8c8f901842950f8c97e3059bfe4` |
| 13 | `lemma` | [finMulAntidiag_existsUnique_prime_dvd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag-existsunique-prime-dvd.md) | 158 | `result-track:74ea930d51c6441fc6acd9247b043dfb2d04d11381478edeb138057392abcf25` |
| 14 | `def` | [primeFactorsPiBij](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/primefactorspibij.md) | 177 | `declaration-track:10e88bd5b6c28f48b4e86206b58a4404cbce0a24a207e15615161cecaf9c2597` |
| 15 | `theorem` | [primeFactorsPiBij_img](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/primefactorspibij-img.md) | 181 | `result-track:25f28e80a9b94b81e1b8c76987dcd9652244789e6d3b68f5709ad3ba8110fa9c` |
| 16 | `theorem` | [primeFactorsPiBij_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/primefactorspibij-inj.md) | 191 | `result-track:61975b45c3402f034505fd38932a4b65cf4cb7e08c67ffe37958692414771490` |
| 17 | `theorem` | [primeFactorsPiBij_surj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/primefactorspibij-surj.md) | 214 | `result-track:e1ddf79bd03c87fb148c6db5d015e17a7739ffc5d8daa46ab4f8a33a9dbb39aa` |
| 18 | `theorem` | [card_finMulAntidiag_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/card-finmulantidiag-pi.md) | 234 | `result-track:3554926d209801d65c31cb2a05571decef5eb1dc611b4d9498785dbc444ad83a` |
| 19 | `theorem` | [card_finMulAntidiag_of_squarefree](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/card-finmulantidiag-of-squarefree.md) | 240 | `result-track:c7eb2e307b2f9991baf54814d1c01ec0177bbc9aa4e316a6935a794755107f70` |
| 20 | `theorem` | [finMulAntidiag_three](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/finmulantidiag-three.md) | 246 | `result-track:b9e4bbc6cf7e940a90a1381870424cf66a051f9021ce118fc8bb9388c77197c6` |
| 21 | `def` | [f](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/f.md) | 256 | `declaration-track:0c3b9921c50633292638e2c01868ce4cc65d216172f412595e7d5ded8d6894b7` |
| 22 | `theorem` | [f_img](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/f-img.md) | 258 | `result-track:d056f39e2d33f72c989a165dc17c1d3ebb1c285b8bc2ad4bc31d4b83b7ccaaf6` |
| 23 | `theorem` | [f_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/f-inj.md) | 271 | `result-track:c93324b0611832cb783e48d4f8aa70eb0768b3a65d4dcb597afc4364ad3c262f` |
| 24 | `theorem` | [f_surj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/f-surj.md) | 289 | `result-track:e275c03ea3f49f33db24fe6f364221e94c64eb2d7f6ba21ff05e9499239ef48f` |
| 25 | `theorem` | [card_pair_lcm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Nat.lean/declarations/card-pair-lcm-eq.md) | 312 | `result-track:b3da54c54c5f4a7718a8523efdbf24cfa8383d8e3d9af620f1510afb46da4ee9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eeeb8fcc7c7b1fa68052e86bcce191ee8aae5d6cd938f3958fdf82217621c721 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
