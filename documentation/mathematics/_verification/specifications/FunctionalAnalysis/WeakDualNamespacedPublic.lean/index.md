# Verification target: Weak Dual Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec12ffe16920ff1577d627ad05b1be24b22c2dd9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec12ffe16920ff1577d627ad05b1be24b22c2dd9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean.json)

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
| 1 | `def` | [toSeminorm](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/toseminorm.md) | 72 | `declaration-track:745cb7cf2c4ff703fea27a91f58bbd0ba7265842035efb5df02280c612bbbee1` |
| 2 | `theorem` | [coe_toSeminorm](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/coe-toseminorm.md) | 75 | `result-track:88a8cc13228be4c7e08f80c26b2dc12b03e22add70eeab108dbb5d0b93d88218` |
| 3 | `theorem` | [toSeminorm_apply](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/toseminorm-apply.md) | 79 | `result-track:a483ceb0994ed7694132f1d624d07cbe0a82fa06c0429efd75f392578ad1bb97` |
| 4 | `theorem` | [toSeminorm_ball_zero](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/toseminorm-ball-zero.md) | 82 | `result-track:63ca6a8a7b4b70b4ee364db1b7ea353b44e5cbc528961f73f329a03994f473aa` |
| 5 | `theorem` | [toSeminorm_comp](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/toseminorm-comp.md) | 86 | `result-track:01f6d034027a072e3922f4bc1e043967aab1ddbc1f364119c621d07cf5e2b6c7` |
| 6 | `def` | [toSeminormFamily](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/toseminormfamily.md) | 92 | `declaration-track:b15e6c131e220f9b6c01e77041ee30f4461ace88d512c2683db6bc4715989c85` |
| 7 | `theorem` | [toSeminormFamily_apply](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/toseminormfamily-apply.md) | 96 | `result-track:7ed7dcee5ad1154067e82266041da6ae403b8570bbbe92808ad62146b0a32223` |
| 8 | `lemma` | [dualEmbedding_injective_of_separatingRight](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/dualembedding-injective-of-separatingright.md) | 99 | `result-track:abd5f4328f54179ce6362a70a80422af421da711f03ea22e4bb3e4960eb3e05a` |
| 9 | `theorem` | [mem_span_iff_continuous_of_finite](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/mem-span-iff-continuous-of-finite.md) | 121 | `result-track:019f4e1acb290d10a6ddd2ccbe00c005d8210d96acb52f32d9f22e399015bb7f` |
| 10 | `theorem` | [mem_span_iff_continuous](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/mem-span-iff-continuous.md) | 146 | `result-track:497124fb0d655dc05c7e54017858cebdd6bf6cc2e175945c4aba0932ede4aeff` |
| 11 | `theorem` | [mem_span_iff_bound](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/mem-span-iff-bound.md) | 171 | `result-track:2ca46df2d13b576f9bc0861a1fa52e73481d8df26c511316ec9f44838349dfd9` |
| 12 | `theorem` | [dualEmbedding_surjective](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/dualembedding-surjective.md) | 194 | `result-track:7a2b723d269629cc05527672d8eaa0644edb1229f01a8fb02a8388cfc25cc522` |
| 13 | `def` | [rightDualEquiv](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/rightdualequiv.md) | 203 | `declaration-track:610706d4479bee4f03de984d526ea1a08639492023a16a7c40fe18d2907ec0a9` |
| 14 | `def` | [leftDualEquiv](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/leftdualequiv.md) | 209 | `declaration-track:b0a5e7982b043012fe446f4407b8eb534484587f9e7a386966919e66fe83c8c5` |
| 15 | `theorem` | [LinearMap.weakBilin_withSeminorms](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/linearmap-weakbilin-withseminorms.md) | 224 | `result-track:ed1a136cb857dc304ff0e564261d1b0b4a2641d316fb6958083798e457eed139` |
| 16 | `theorem` | [LinearMap.hasBasis_weakBilin](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/linearmap-hasbasis-weakbilin.md) | 230 | `result-track:b5fbf5715de73b20ef7e9a27928607b4b166f730ef0a3187e2c63cc1d32b12d8` |
| 17 | `instance` | [WeakBilin.locallyConvexSpace](../../../../FunctionalAnalysis/WeakDualNamespacedPublic.lean/declarations/weakbilin-locallyconvexspace.md) | 241 | `declaration-track:2c3837da44e517c2d835161181eb05c61be2a7e9f07710d889866a570c7e6488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69a76c1528e0db87ba33a8cf13cd50c2904df71e23207f60c92f95c20d72c49a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
