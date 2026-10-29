# Verification target: Cyclic Fiber Hop Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94e862c9a6372c58f5547a14453d0afee378b9b8",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94e862c9a6372c58f5547a14453d0afee378b9b8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoverPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/coverphase.md) | 38 | `declaration-track:29feee533d5b0d54a952af935fc21d459ec8e96b9794c1b76b9ba6e350968188` |
| 2 | `instance` | [coverModulusNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/covermodulusnezero.md) | 41 | `declaration-track:1eaaf35d08d6bf4cfaafd87bb50c3030e97b68b7245b3062488d2c0489fb075e` |
| 3 | `abbrev` | [Fiber3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/fiber3.md) | 46 | `declaration-track:c3afbbc988c62b08d79473ea84b25eb6695dd154fb4c83ae04b0a605ce9ca174` |
| 4 | `abbrev` | [Section3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/section3.md) | 50 | `declaration-track:3606a2a11ca6b16cb5f1e0138e26e7a94359bfc48abd4a74e951a46e9d88034c` |
| 5 | `def` | [successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/successor.md) | 57 | `declaration-track:cba3ac3489c60b97b27cc9f3a38af7721480842f8e3c7badf93e63d1f87c473b` |
| 6 | `def` | [predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/predecessor.md) | 62 | `declaration-track:e1824ebc6389ce295f47515f951c420dd93a0a9e980159ae12082317274dfbc8` |
| 7 | `def` | [antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/antipode.md) | 67 | `declaration-track:95f4fe4c1e30502e5a58cb2eadf7e834a122a574ba9dc865e12e9091440a3c78` |
| 8 | `theorem` | [successor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/successor-apply.md) | 71 | `result-track:3bea8ba519b9ae57efca1e96d1cccfebd0d26c735c140295d72c5e6d2c6b411f` |
| 9 | `theorem` | [predecessor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/predecessor-apply.md) | 76 | `result-track:29b312f1d37ff58d3c1a4178d29981853e7dce9bbf1013871bd00346e675b3bd` |
| 10 | `theorem` | [antipode_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/antipode-apply.md) | 81 | `result-track:a545b5a115ba91f9bbad1e7288d51eb168e8c07771a22b53c0a90dc171db15b1` |
| 11 | `theorem` | [successor_predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/successor-predecessor.md) | 88 | `result-track:70df4ae9b5e57ee6b1ef0690e692538a676cb6db7b9ad42b30df5622e099a2e7` |
| 12 | `theorem` | [predecessor_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/predecessor-successor.md) | 93 | `result-track:0ae5fa16f36d658df0cd86d1162c526491ec7425aca29c5a024c7f5a705cd59f` |
| 13 | `theorem` | [antipode_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/antipode-involutive.md) | 98 | `result-track:83ba234e6164f3343ce85e0d4b8117f936d9d6371bf513e564bb244e696d3a46` |
| 14 | `theorem` | [successor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/successor-commutes-antipode.md) | 107 | `result-track:b3a19f1257322ebc9225d01b3031145a6bf1375355886057902606d958ad9968` |
| 15 | `theorem` | [predecessor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/predecessor-commutes-antipode.md) | 113 | `result-track:b8c522bf5403b590eafee29762ee457ac422700cbb1f979d4e7af8ce81ce30a1` |
| 16 | `structure` | [StepSystem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/stepsystem.md) | 122 | `declaration-track:99962479ee5361cc8a5af473712c74a2a5232b366e6a545ce6fab01ed1af13cc` |
| 17 | `def` | [forwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/forwardproduct.md) | 132 | `declaration-track:6717993279445894971c272cac25cdd9eb4eee1bcf64f0984d3ffb2221e9b19a` |
| 18 | `def` | [backwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/backwardproduct.md) | 141 | `declaration-track:53f044bc84c2fe8d8aa7c819228444324c3910f7f4f9b3761b2244b724f42b7e` |
| 19 | `theorem` | [forwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/forwardproduct-zero.md) | 149 | `result-track:b87becde0e3c3bd41bf1e8a2f4944b6478bd34a5c6f2867228ba34f6361ce6e6` |
| 20 | `theorem` | [forwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/forwardproduct-succ.md) | 154 | `result-track:e0055609075ca81f68eb36e45112c55acfaa9dbb57ec424f448eba34d63b7ab0` |
| 21 | `theorem` | [backwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/backwardproduct-zero.md) | 162 | `result-track:95429aa703ca7465f5bcb4990d7d2b5efa8728b5d7c383b4e982da185bc6fa3d` |
| 22 | `theorem` | [backwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/backwardproduct-succ.md) | 167 | `result-track:eef6bd2c64d985e0d0b225054f752a8c664dac8ce8b31c6ba12fc414a2c4dbb5` |
| 23 | `theorem` | [backwardProduct_eq_forwardProduct_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/backwardproduct-eq-forwardproduct-symm.md) | 175 | `result-track:4d8340fccdf02ad4d5419f007c2e05ba4e77afdd78e397cb05c6dc78a4cb61e3` |
| 24 | `theorem` | [backward_forward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/backward-forward-apply.md) | 185 | `result-track:af955f98564011224f896229afa81afe4a132bbf1156e1f59145aa5cea1ca008` |
| 25 | `theorem` | [forward_backward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/forward-backward-apply.md) | 192 | `result-track:3fc7c92c33b4299916aa62c65d8293617ee5f07ec27700e072994e6938934b6a` |
| 26 | `theorem` | [forwardProduct_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/forwardproduct-bijective.md) | 199 | `result-track:1dbdc94c3fe904e09b1121921ffab52434a4f554e2068aed99c1fe5a8a125ad4` |
| 27 | `theorem` | [forwardProduct_half_compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/forwardproduct-half-compatible.md) | 205 | `result-track:d227d458fead2dfcc4fba858a8e2311d7133eb8e9a66104db38c378420718b64` |
| 28 | `def` | [hopEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/hopequiv.md) | 220 | `declaration-track:cdd127131a225b6a5483b836da671c8c33fbca3756e30b4d94f192de7d2dd1da` |
| 29 | `theorem` | [hopEquiv_apply_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/hopequiv-apply-successor.md) | 240 | `result-track:4d50af48eb7f7247ccdd546672ac9d52a220d7ce4096c4ffc20d5977fdd8d7ec` |
| 30 | `theorem` | [hopEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/hopequiv-symm-apply.md) | 247 | `result-track:1cda8ffaa5b87ee5b1b925eaecb71c5fc2701a3df60162b0147190702b95f7b1` |
| 31 | `theorem` | [hopEquiv_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/hopequiv-bijective.md) | 254 | `result-track:491666a9adbfc79e700535a52182978682894522e7740cb4b4fed0216679ecab` |
| 32 | `def` | [halfShiftEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/halfshiftequiv.md) | 260 | `declaration-track:f9e2b2a7cef2eea2e003ff70aa06cfbfa550437bd9ebd3eaf10516ad7aad2881` |
| 33 | `theorem` | [halfShiftEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/halfshiftequiv-apply.md) | 276 | `result-track:322522b83dd42b08b1ecacb35165a75a5f0ba590ed63bc26af7c78ff18c180aa` |
| 34 | `theorem` | [hopEquiv_commutes_halfShift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/hopequiv-commutes-halfshift.md) | 281 | `result-track:7250ab6571e40d56b1c485eb6b550fa3987fb4520c78e1950f8db18bcd180228` |
| 35 | `def` | [IsAntipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/isantipodal.md) | 294 | `declaration-track:512418deaff45681847100ba05594fbe1d7e3cc7b76ae34d7d2c6fb37b420c94` |
| 36 | `theorem` | [hopEquiv_preserves_antipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/hopequiv-preserves-antipodal.md) | 298 | `result-track:7be70c4db5b577b25f07aa9762328ed6c94b18ee177e3f104af146be7fca2724` |
| 37 | `def` | [permuteFiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/permutefiber.md) | 316 | `declaration-track:bc07bdba7c75a449fdb112ef98459bcafe0d849e8c2941094b96cad28abaeef3` |
| 38 | `def` | [permutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/permutationrepresentation.md) | 331 | `declaration-track:56cefa4896f6cfb74d6c1c8ceb79f1b3b7bda0b24c0c901554a302c6e2ee0492` |
| 39 | `def` | [adjacentSwap01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/adjacentswap01.md) | 343 | `declaration-track:3a0c5b4e5a8ed491f46e4809470279338d59cf7c7c6f0a1bd272bf1eb64bd631` |
| 40 | `def` | [adjacentSwap12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/adjacentswap12.md) | 348 | `declaration-track:4d00d3336fb1a3b2aea2707af565b6b65872207d5380695cf50ce9b4dc34f947` |
| 41 | `theorem` | [adjacentSwap01_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/adjacentswap01-sq.md) | 352 | `result-track:de4c7b4520f6b52c1ffde4c0d104ba5cc068cb94b2d24c8d82e3fc58f70463b8` |
| 42 | `theorem` | [adjacentSwap12_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/adjacentswap12-sq.md) | 358 | `result-track:d006f9bae07ab79ad93753cc87aa71c2fb78345a2c3c719a197895603adacd48` |
| 43 | `theorem` | [adjacentSwap_braid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/adjacentswap-braid.md) | 364 | `result-track:39e361dc33bf7019ac24101c3b5174b72cb28de50d9b80adfaadedf8ab76d2d7` |
| 44 | `theorem` | [adjacentPermutationHops_satisfy_s3_relations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/adjacentpermutationhops-satisfy-s3-relations.md) | 376 | `result-track:637d33e1a00e6587a82c96c2a6648c45547621c2c9066b2d4dbd6b73d5b20fcd` |
| 45 | `def` | [_root_.LinearEquiv.withPayload](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/root-linearequiv-withpayload.md) | 398 | `declaration-track:798f37055878044224fad8bee334d1ef1be8e77adc106bb150c0612a40e55516` |
| 46 | `theorem` | [_root_.LinearEquiv.withPayload_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/root-linearequiv-withpayload-fst.md) | 408 | `result-track:fa5979ec49fbd7ae3f35ff8ffe9dad5cb67a24a7fc9f8972b373c36027b4d88f` |
| 47 | `theorem` | [_root_.LinearEquiv.withPayload_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/root-linearequiv-withpayload-snd.md) | 414 | `result-track:f0efc11560ebc6b1d73194ce85149cce5c3280adeffa93128ee3f066a6c5ba60` |
| 48 | `theorem` | [_root_.LinearEquiv.withPayload_preserves_payload](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/root-linearequiv-withpayload-preserves-payload.md) | 420 | `result-track:4be3f76c65fafd501536b33c1f9ce5d3b7d5c3adea0d69b3f7b5cb514280d12b` |
| 49 | `theorem` | [_root_.LinearEquiv.withPayload_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition1.lean/declarations/root-linearequiv-withpayload-trans.md) | 426 | `result-track:5eea55e6ec6dd85d1aa9e4d092fef86eb3450211b324655c4ec1a2099d97bb3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0359a689b930361d241ecea189d15883d92ba7ecacb5135748d8d6d09203c9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
