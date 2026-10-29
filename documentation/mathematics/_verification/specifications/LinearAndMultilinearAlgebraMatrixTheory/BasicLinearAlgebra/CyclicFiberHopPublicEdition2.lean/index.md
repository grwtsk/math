# Verification target: Cyclic Fiber Hop Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03dc33b9273d4e9dfd0e528d4746248e8a08f31e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03dc33b9273d4e9dfd0e528d4746248e8a08f31e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean.json)

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
| 1 | `abbrev` | [CoverPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/coverphase.md) | 36 | `declaration-track:f605561fab462939b052b7925e638976e99a03404125a6f00d06c06b167cf995` |
| 2 | `instance` | [coverModulusNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/covermodulusnezero.md) | 39 | `declaration-track:a6cd6d81c26e230a8ba9f2124a03a5e972907d8a88fd93788f04840758705938` |
| 3 | `abbrev` | [Fiber3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/fiber3.md) | 44 | `declaration-track:541e8a8eff6332fb42fe8e49d9cc7ee1437a1159eed9e0bbf033ffc1c672969f` |
| 4 | `abbrev` | [Section3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/section3.md) | 48 | `declaration-track:995192347b3724a982888a3645c7d9ebc8cd9b2f898ec7c2699bbf7a706d16ac` |
| 5 | `def` | [successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/successor.md) | 53 | `declaration-track:0ba956faf81c5d76390dcda31d07123930eaf1d79641b5339c62d80f1165989a` |
| 6 | `def` | [predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/predecessor.md) | 58 | `declaration-track:a1dbf27607395298a43c177030d9ff3df3ee4794028acf5c0eec8be9f98945c9` |
| 7 | `def` | [antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/antipode.md) | 63 | `declaration-track:6c46f7bbd9f6101d85a07c8200a1c2ee51c3b5de41846f9b3b123bffcc40474d` |
| 8 | `theorem` | [successor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/successor-apply.md) | 67 | `result-track:161eccc0c367dde1922338f18a40904a716ea309d574f32f8908e27a88b76dc2` |
| 9 | `theorem` | [predecessor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/predecessor-apply.md) | 72 | `result-track:ebd6abb6a46f6329a01e69fc7de69cdd1c8664603b84b2a99006bba81fcfa5d8` |
| 10 | `theorem` | [antipode_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/antipode-apply.md) | 77 | `result-track:da4a8479a0a89ace1030d19d2bba0abb0f9b39192fb214d803b81f7d7847810e` |
| 11 | `theorem` | [successor_predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/successor-predecessor.md) | 82 | `result-track:a7c84c267ad26072285d3309266858a3fe86ace6dd6fbafc868505a60b48b3d6` |
| 12 | `theorem` | [predecessor_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/predecessor-successor.md) | 87 | `result-track:316f6c3efd4eff4b0ad6ce714ba938aa82e57322cfbfee80199f484e32b9e3ca` |
| 13 | `theorem` | [antipode_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/antipode-involutive.md) | 92 | `result-track:24c9b33471154da78e8c41a1a114ad6c640dc09207041f8830d053e9c28d4ab0` |
| 14 | `theorem` | [successor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/successor-commutes-antipode.md) | 101 | `result-track:9ae33c398e0cc6153e46609ab9974c4621462ca683b840788195da3f08ab14b5` |
| 15 | `theorem` | [predecessor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/predecessor-commutes-antipode.md) | 107 | `result-track:660bedf74cb6b2e0feec31e5cbc31565045c31a7af0d93d14b339549f54e3347` |
| 16 | `structure` | [StepSystem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/stepsystem.md) | 116 | `declaration-track:16d3beb3421277b19e1af921bc0837ca88f9c1b057e30e64372ca494a7dd805b` |
| 17 | `def` | [forwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/forwardproduct.md) | 126 | `declaration-track:2dcefcea8b723b3029ac2af751274e3e6141b06dbe843424bdf44ce2671b3f93` |
| 18 | `def` | [backwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/backwardproduct.md) | 135 | `declaration-track:02c9ae496115b2ab6d8adf8ab7117e3f6704341eb884347bd03ad478f29bc8d4` |
| 19 | `theorem` | [forwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/forwardproduct-zero.md) | 143 | `result-track:827def7882027d9693b5f00fdb61d17563d1a9127a866c79798e6e576a452b39` |
| 20 | `theorem` | [forwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/forwardproduct-succ.md) | 148 | `result-track:bfdedee559fd4b09c30952cab8bc7ee1d38badbd3965e6ed982eeacec15ae4f4` |
| 21 | `theorem` | [backwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/backwardproduct-zero.md) | 156 | `result-track:151f9ce7b87aaf67dd11bbc66ad64ff493ed1fbf8a50f16ea4b0a9f1d5bc75c9` |
| 22 | `theorem` | [backwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/backwardproduct-succ.md) | 161 | `result-track:0bc0248da3f90e0869ff693aae102715e66b5358f21f7be65d01bb2160ce7c87` |
| 23 | `theorem` | [backwardProduct_eq_forwardProduct_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/backwardproduct-eq-forwardproduct-symm.md) | 169 | `result-track:110562825f1aba932fa1df3ed516dcd2baa6eedf76518d5e54808253f6c44bf5` |
| 24 | `theorem` | [backward_forward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/backward-forward-apply.md) | 179 | `result-track:65f25167cca8c500e2b76365c2f869ecb4f40477ffc00fb6b8d238c080c2e408` |
| 25 | `theorem` | [forward_backward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/forward-backward-apply.md) | 186 | `result-track:84803b2931172cd716f4ba47b9ad746d8062c0fbcc49e5ff7aeb5296aa4550ee` |
| 26 | `theorem` | [forwardProduct_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/forwardproduct-bijective.md) | 193 | `result-track:cf982ce1a8ea48643c21832282010fa22858c382142664ad4dac6d6ba37ace36` |
| 27 | `theorem` | [forwardProduct_half_compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/forwardproduct-half-compatible.md) | 199 | `result-track:ff6b18c22494f87b651be06050bdd1f703fe005d70adfbe3fcf4d09f407c8f8e` |
| 28 | `def` | [hopEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/hopequiv.md) | 214 | `declaration-track:1f4893673c3f6abeca83172c9b6988fa307718f89908916aecdafe2ab5c1ba2f` |
| 29 | `theorem` | [hopEquiv_apply_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/hopequiv-apply-successor.md) | 234 | `result-track:c544554597c80fc02d0eceb2fb2b31337e694e5a62044c40cdb7f09f682fd76a` |
| 30 | `theorem` | [hopEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/hopequiv-symm-apply.md) | 241 | `result-track:8021944844d238b3abd653ae1cd1e559f69beacd2e480b4ae21cb602fc6c242d` |
| 31 | `theorem` | [hopEquiv_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/hopequiv-bijective.md) | 248 | `result-track:c2ca5aba7d27607d3e6dcf1d9acadcb27e8d37e99c583620fe83d1b9387381ad` |
| 32 | `def` | [halfShiftEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/halfshiftequiv.md) | 254 | `declaration-track:d473e96d70eb2bfe6130ba4a7af492b4cb6193a8cb647c4abc74de1681ed64c5` |
| 33 | `theorem` | [halfShiftEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/halfshiftequiv-apply.md) | 270 | `result-track:19022497c8c192a6ae3691534367a048fa6bd6496fe85140b4c2f920b5ad3516` |
| 34 | `theorem` | [hopEquiv_commutes_halfShift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/hopequiv-commutes-halfshift.md) | 275 | `result-track:9119c6094b7f27ddddbaaef8551f3392bcb962538d7fb3f0888663c6d0265597` |
| 35 | `def` | [IsAntipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/isantipodal.md) | 288 | `declaration-track:4e0dbef7899ddf67f87ce6f2e6fcaf9c394c89141a869d424a4833007ab71121` |
| 36 | `theorem` | [hopEquiv_preserves_antipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/hopequiv-preserves-antipodal.md) | 292 | `result-track:87773d5adf469e78080b3d30b479906ab1d7c045088459702c49b34f5c0067f3` |
| 37 | `def` | [permuteFiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/permutefiber.md) | 310 | `declaration-track:f545969f832a428c8f888d77c7a2f3ba5112f9dc4b4f3e469620b86626e68b9c` |
| 38 | `def` | [permutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/permutationrepresentation.md) | 325 | `declaration-track:4abe855368a9a249f72ab0714df51f9a7d431097718c3ead27f10653fde789ef` |
| 39 | `def` | [adjacentSwap01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/adjacentswap01.md) | 337 | `declaration-track:7c4334d6e7a22d295f55a1dafdbfcbb57c41588e300ba54adc05d28fd27a1568` |
| 40 | `def` | [adjacentSwap12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/adjacentswap12.md) | 342 | `declaration-track:aa857b88676d1607e86df300d5df19a703a51085eb1ff3222d97d0ececefbc59` |
| 41 | `theorem` | [adjacentSwap01_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/adjacentswap01-sq.md) | 346 | `result-track:b6179dd0977899c0620768cf5b3aee84db75809af472b674194a814e45603579` |
| 42 | `theorem` | [adjacentSwap12_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/adjacentswap12-sq.md) | 352 | `result-track:fce49798fda88753b77c311bee7c68484d79a6c17e75a164606054163ff1f135` |
| 43 | `theorem` | [adjacentSwap_braid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/adjacentswap-braid.md) | 358 | `result-track:320da97c39d842a53e5e7dd49f39967fae3832befb087f7a8badc923448d8ff2` |
| 44 | `theorem` | [adjacentPermutationHops_satisfy_s3_relations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopPublicEdition2.lean/declarations/adjacentpermutationhops-satisfy-s3-relations.md) | 370 | `result-track:cc2ecb76e48f3a2787078a777611acb3e1ed3a46eb39a9b8d8e1b659615cb31b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7edaa695bb3fc977bb95b50b956d461bc987398e133f1e492a3669a4b986c510 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
