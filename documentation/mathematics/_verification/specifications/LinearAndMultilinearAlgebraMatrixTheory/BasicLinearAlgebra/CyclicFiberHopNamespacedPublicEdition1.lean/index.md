# Verification target: Cyclic Fiber Hop Namespaced Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2441aa420267a3a8f616dbb8bf00c4a78e9fdff4",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2441aa420267a3a8f616dbb8bf00c4a78e9fdff4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoverPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/coverphase.md) | 46 | `declaration-track:9e1cbf1be2ae7e6c0152e0592c71607fd07d803cbb03eb786a4f32be62494667` |
| 2 | `instance` | [coverModulusNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/covermodulusnezero.md) | 49 | `declaration-track:38d38244b480feb2d4aaeff742dd80e4a2519c6d7969d56d84de2ce70d5728b0` |
| 3 | `abbrev` | [Fiber3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/fiber3.md) | 54 | `declaration-track:2185f28893d3ff3e6f3530226bd0f04b3f6bd0f1b102e0d9b45fe8306e91e5af` |
| 4 | `abbrev` | [Section3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/section3.md) | 58 | `declaration-track:24c8e42bf1b330d8858b9cf271b2ec6674080f3562e7ba29711ea212d6e21a4f` |
| 5 | `def` | [successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/successor.md) | 65 | `declaration-track:d0fce2d21f9a286af8772bf483d115d9042c89adaf68c9125b5cc3f11265ee50` |
| 6 | `def` | [predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/predecessor.md) | 70 | `declaration-track:804e85ecf5ea04d4e35e0c0e6dfc28fe91f846d9002e76ec0d192b70bc4808c2` |
| 7 | `def` | [antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/antipode.md) | 75 | `declaration-track:c7972cdf64dbf0a137b14a4bc88a9f288b9fd56aad84f8db133f2d0a0b4c2463` |
| 8 | `theorem` | [successor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/successor-apply.md) | 79 | `result-track:049611c300bbe3b37e4ace3f318a42fcd2ab685a4d844d40deab12b795f8d903` |
| 9 | `theorem` | [predecessor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/predecessor-apply.md) | 84 | `result-track:987855c352812913db15c23bb81ec216cd85ea2cbfb960a6026538118ee90f02` |
| 10 | `theorem` | [antipode_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/antipode-apply.md) | 89 | `result-track:5ce074ccb82616c0e40a635fe4e904f027a691cdadbbfb596da3a810861b9f39` |
| 11 | `theorem` | [successor_predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/successor-predecessor.md) | 96 | `result-track:8f54c4ad5176f46ff0ed358c72aae9d11638e002db879e9d15d46de60ea22baa` |
| 12 | `theorem` | [predecessor_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/predecessor-successor.md) | 101 | `result-track:cd0473b5984c44026e55ac38bd681f729a7335e44b75aeb09f21709c46fa0e09` |
| 13 | `theorem` | [antipode_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/antipode-involutive.md) | 106 | `result-track:72e16135014bc5e17a6b6cf36225eda021de5a87213e25435bfcfebe1a835c3a` |
| 14 | `theorem` | [successor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/successor-commutes-antipode.md) | 115 | `result-track:dc18ca975a164b292f0b0a15b280e2688e62fc334e682063b62cff4ad789afa1` |
| 15 | `theorem` | [predecessor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/predecessor-commutes-antipode.md) | 121 | `result-track:a07764ee9a068a3e2ade61d662ebbcfdc302c01820ca80249d27b9a8aefc92e8` |
| 16 | `structure` | [StepSystem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/stepsystem.md) | 130 | `declaration-track:74fa1f7aae37017b43f9aabb60ad4490119642f32bc227450fe16e947e49294a` |
| 17 | `def` | [forwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/forwardproduct.md) | 140 | `declaration-track:ae899585ad76f779738c1fdf968bafe6f2c1bde58937578bbad79b3cdae9e8b8` |
| 18 | `def` | [backwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/backwardproduct.md) | 149 | `declaration-track:4c7105839dbeb027a49e660c0bd393ea708360a3b17d2683ceb4b399fbfe824d` |
| 19 | `theorem` | [forwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/forwardproduct-zero.md) | 157 | `result-track:8ff8945324dc0081ef81d5f147bb6b6a1a919d5eb7b6ff35bcd74b8283397c66` |
| 20 | `theorem` | [forwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/forwardproduct-succ.md) | 162 | `result-track:47532c3b373b331abfdf1f3bc19b7399178eae6af2506f9cabbc280fec976735` |
| 21 | `theorem` | [backwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/backwardproduct-zero.md) | 170 | `result-track:1bce92c32b2326a4720e93b84fea32c4c77eaaecbac760ba0247d044f27e22e9` |
| 22 | `theorem` | [backwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/backwardproduct-succ.md) | 175 | `result-track:a9559dea2cef2602c7398cb75cc1d2bdbaa15872391956c74164aa618db0024f` |
| 23 | `theorem` | [backwardProduct_eq_forwardProduct_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/backwardproduct-eq-forwardproduct-symm.md) | 183 | `result-track:3b509d359076ee69baebe8e098ffbbc775fc5bbdec210e401a970abcb985353f` |
| 24 | `theorem` | [backward_forward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/backward-forward-apply.md) | 193 | `result-track:b50a1916cf4e78058866236abe156fea779033b87644f6b342fe5fac3fae4098` |
| 25 | `theorem` | [forward_backward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/forward-backward-apply.md) | 200 | `result-track:e5ffbee9e7b6ba8a89c9ca3491c9a07e889d5a9d7785abfd033cc275fb07335a` |
| 26 | `theorem` | [forwardProduct_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/forwardproduct-bijective.md) | 207 | `result-track:ff39370bdd238676d0bfcd19406a106ae289754006f169dbbff8015fdc5b5a9c` |
| 27 | `theorem` | [forwardProduct_half_compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/forwardproduct-half-compatible.md) | 213 | `result-track:8ff2b29afdee35b296e4f52ce81d1ea842455b466ddf3971655b62bd0dfad32e` |
| 28 | `def` | [hopEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/hopequiv.md) | 228 | `declaration-track:52bc4ea04eb864bdde1e9790c47ee3f0e100b1604c0d02a541581ece6c511e28` |
| 29 | `theorem` | [hopEquiv_apply_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/hopequiv-apply-successor.md) | 248 | `result-track:ece862d43ab355d4a14d865329390e85048d853c44169e4cb72d214b383f2c64` |
| 30 | `theorem` | [hopEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/hopequiv-symm-apply.md) | 255 | `result-track:a8bc835aeeceb28fca95162ca838b46832123d79889c83d81f5942d2efeccb9f` |
| 31 | `theorem` | [hopEquiv_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/hopequiv-bijective.md) | 262 | `result-track:c2b33dfdb01180a28ede1041fe86db75659ba55044a5335d73100570110cc138` |
| 32 | `def` | [halfShiftEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/halfshiftequiv.md) | 268 | `declaration-track:368d2ff76b528b2105caa7d74f67a9d81bc5b2f66c314c6770032f57d6b23a5b` |
| 33 | `theorem` | [halfShiftEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/halfshiftequiv-apply.md) | 284 | `result-track:7fe75c5f8489df8893437998245cc2386a520b6f3db9cf6bcf5fc71932715a91` |
| 34 | `theorem` | [hopEquiv_commutes_halfShift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/hopequiv-commutes-halfshift.md) | 289 | `result-track:9c67174a9970522650fa1593fd113749574ffaaff0bf8bfc4c7e57ada8bb5511` |
| 35 | `def` | [IsAntipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/isantipodal.md) | 302 | `declaration-track:fcc80e3956113aa0b02a3eda99a5420c813ad5a7e3b1ffa78778fa0e3cacb151` |
| 36 | `theorem` | [hopEquiv_preserves_antipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/hopequiv-preserves-antipodal.md) | 306 | `result-track:a02327b7d6d8a51f989d698b7c4169d6ea68402783a622235f564fe391e5a337` |
| 37 | `def` | [permuteFiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/permutefiber.md) | 324 | `declaration-track:bc573e9a4ffdb2b4f41efa14693863ae7fc43b7a200675cb06e658cfcc6ae1c4` |
| 38 | `def` | [permutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/permutationrepresentation.md) | 339 | `declaration-track:61ce5e516db30e59e727231d8ac8453349432c2b60ebe071dbe905854f0ce183` |
| 39 | `def` | [adjacentSwap01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/adjacentswap01.md) | 351 | `declaration-track:9ee9b897ee07e9bde3465ad360a4ff619be202cd5462ee312694fbe50704b325` |
| 40 | `def` | [adjacentSwap12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/adjacentswap12.md) | 356 | `declaration-track:8d6fd97adf0b3fab92f622deb064fe5dda35d5a4f50285cb44e9d0c59b7f24cc` |
| 41 | `theorem` | [adjacentSwap01_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/adjacentswap01-sq.md) | 360 | `result-track:de108e221d240f9f84d3c4ca38bf9421b75a1039333361d73fc1a15d8f3893d9` |
| 42 | `theorem` | [adjacentSwap12_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/adjacentswap12-sq.md) | 366 | `result-track:04dcb4d60cecc8fa02f9e8994368ea5ad93100b53cabae2c8ce1970f0f40a8a7` |
| 43 | `theorem` | [adjacentSwap_braid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/adjacentswap-braid.md) | 372 | `result-track:f3987938fa471dee36e1da39c448a4778239f453b7757d659dc306bbffce09df` |
| 44 | `theorem` | [adjacentPermutationHops_satisfy_s3_relations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/adjacentpermutationhops-satisfy-s3-relations.md) | 384 | `result-track:af2b450ae7e46eccb3b2c40f3b47fe8d74e8a943a4478eb52af6bf3dc3cf8f07` |
| 45 | `def` | [Cyclic Fiber Hop Namespaced Public Edition1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/withpayload.md) | 406 | `declaration-track:e6ae8c8c1171a191aa4ff1be93bae01ae2528819ff692070a425b9ca5ada2f95` |
| 46 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/withpayload-fst.md) | 416 | `result-track:d8fc49015f9a41fbf0706cddd573028acc73d24b189538fe4944bf600926dd12` |
| 47 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/withpayload-snd.md) | 422 | `result-track:864f197c2d01acc59cf5fda7bf812d10042fab59f9af6c65548fb9c4ccfb2a4c` |
| 48 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/withpayload-preserves-payload.md) | 428 | `result-track:2c1d6c28ce7d405391b1b5d444272e00bf3c59da7f3c303778a003d90b03c05b` |
| 49 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/declarations/withpayload-trans.md) | 434 | `result-track:5e177483d351f4ee2baa0d54df9f6a580cf8adadc624340913d5e99ab9872992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=815d2580982465288690295caeee49da4f42fa92dfeaea5c26f526607af4e974 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
