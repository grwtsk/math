# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineCocycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acafd65538bdd05b032ef9d376dee41f65860e18",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineCocycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HolomorphicLineCocycle.lean/index.md) · [Full source](../../../../GeneralTopology/HolomorphicLineCocycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acafd65538bdd05b032ef9d376dee41f65860e18`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineCocycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineCocycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing`](../../../../FunctionsOfAComplexVariable/HolomorphicIndexedCoverGluing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology`](../../../../GeneralTopology/HolomorphicEvaluationTopology.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Topology.VectorBundle.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ambientRepresentative_differentiableOn](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/ambientrepresentative-differentiableon.md) | 30 | `result-track:a47407b9668fbe79a9175a0bf8cc321b6b12047886125904ddbd768efb2f21eb` |
| 2 | `structure` | [Cocycle](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/cocycle.md) | 38 | `declaration-track:9a881999cd86292dc8a086971f167792f0e8531a4a0c1f09ca5f5e9f66572775` |
| 3 | `def` | [chartSet](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/chartset.md) | 53 | `declaration-track:616fe45bb877939ca6335c0676ff8779875febf0d2f3fa8d48131cce43c54d85` |
| 4 | `def` | [scalar](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar.md) | 57 | `declaration-track:de876f651d9320eb682305cfb67f7415f70099b4374a526ef7f2bbae3db1c13e` |
| 5 | `theorem` | [scalar_apply](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar-apply.md) | 60 | `result-track:77c9661f52a552b595ddabb924db4f826f14757ea3f2433df935002e47759de5` |
| 6 | `theorem` | [scalar_self](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar-self.md) | 66 | `result-track:d1993cac0feee28764d87b754db32c9317963e9febd9af1ac11c08d5550f0824` |
| 7 | `theorem` | [scalar_comp](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar-comp.md) | 71 | `result-track:5757d00688edd12e35e3a57797cbbb446bddabcdc6a0c9edc428600ca31fece0` |
| 8 | `theorem` | [scalar_inverse](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar-inverse.md) | 80 | `result-track:1e0e7c1613a8326b2a60e48d03540f3d9d117d1d919aefba1b4ed5b945b0b0a9` |
| 9 | `theorem` | [scalar_ne_zero](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar-ne-zero.md) | 85 | `result-track:d3dbb72cac4065c8067ed00744f693709bce214cb1e102d87b44f2764f9d1cc9` |
| 10 | `theorem` | [scalar_continuousOn](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/scalar-continuouson.md) | 94 | `result-track:4ac299c9ae5b926006cd8ef3504c108bd2a3875ab58a4800fefee5ced9c50d33` |
| 11 | `def` | [coordChange](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/coordchange.md) | 101 | `declaration-track:39d0521dc2b3d578285183458bb68abd194a3fff26e66268773996eab3e3def5` |
| 12 | `theorem` | [coordChange_apply](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/coordchange-apply.md) | 105 | `result-track:d8f672847cb2cabea6f697e3c05b64456e8b5ef94648c91ace041d5f266018b7` |
| 13 | `def` | [vectorBundleCore](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/vectorbundlecore.md) | 109 | `declaration-track:e092ac3e75615d276c2352ba9b4c95a3570875af10fee7b0aaa05d12b153d532` |
| 14 | `theorem` | [projection_continuous](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/projection-continuous.md) | 128 | `result-track:a1b9ea7da8ed7848532c33aecd0b171db391ff155be99008dffb88f4b0fd7a31` |
| 15 | `theorem` | [projection_isOpenMap](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/projection-isopenmap.md) | 132 | `result-track:531d1afa900a204f3ef5945b825941de9509d09b655de938c830d3e9849f7f44` |
| 16 | `def` | [localFrame](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/localframe.md) | 137 | `declaration-track:c262bcf438870d0400067d4c79af6c285f7319ac87eed8e3f3626c6e23dc9aa6` |
| 17 | `theorem` | [localFrame_transition](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/localframe-transition.md) | 142 | `result-track:f0c52591d1a9f8fb51e7afe01c5b01bad2626e3db27511a9b070f384a7bea76d` |
| 18 | `def` | [identity](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/identity.md) | 150 | `declaration-track:86cc79197f0dbd3d3a9ab564af087c3c2dd133eac39081f32de9ecb19e803cb8` |
| 19 | `def` | [constantFrames](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/constantframes.md) | 156 | `declaration-track:8e2b7be4f80cf84e647bdbf5b99ae0a0fbcc8ec1aca2a667dc40e58fb8699a04` |
| 20 | `def` | [twoCharts](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/twocharts.md) | 176 | `declaration-track:dbfabd4fdceaafb5b7e2d1b85e57a917d504f7fa441f961bd048b017a77aaa80` |
| 21 | `def` | [twoCharts_isOpen](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/twocharts-isopen.md) | 182 | `declaration-track:2dde4c0a939a093c34ec0f9d17bd0ae312f23e39d6cdc6b9107fa74b50be4453` |
| 22 | `def` | [minusOneUnit](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/minusoneunit.md) | 184 | `declaration-track:4fe7eaf5661938b6329c224a4e0a600264dafa30e19fb4d1e73a2e771d13ae4e` |
| 23 | `def` | [signFrame](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/signframe.md) | 190 | `declaration-track:1ec50298a43b430071c9829d37176118e7cc3511a8f77b42f68a2f8592a5e086` |
| 24 | `def` | [signCocycle](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/signcocycle.md) | 195 | `declaration-track:4b741053f7f4f2181d16c6353435adef1a67c5b940ccd379449e3f43ef0eaefe` |
| 25 | `theorem` | [sign_transition_not_identity](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/sign-transition-not-identity.md) | 197 | `result-track:da9419fd605def65ed510c06ceb8bd7563e929e4915ca7352a7bece7f4c97137` |
| 26 | `def` | [pairwiseSigns](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/pairwisesigns.md) | 204 | `declaration-track:d6cfba395de3a2b5edbb3fd01f9397f51647673ea08104cd229f5c806324944e` |
| 27 | `theorem` | [pairwiseSigns_inverse](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/pairwisesigns-inverse.md) | 206 | `result-track:28f82ceaf38bc8dacbc901087a5b9dd40628d38a6615bdac2f76b8b954f8806b` |
| 28 | `theorem` | [pairwiseSigns_not_cocycle](../../../../GeneralTopology/HolomorphicLineCocycle.lean/declarations/pairwisesigns-not-cocycle.md) | 211 | `result-track:1476c235a9faa86eaa8a1036187e9565940c53488909aca2f23e5778cf3e4624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=154f5b20796fb7189811907c9256722af78354080fbd4287a3812fcedb4fc738 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicLineCocycle.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicLineCocycle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
