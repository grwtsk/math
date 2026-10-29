# Verification target: Diagnostic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "016931a51027ffd12444349cb66c690eaaf5d594",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `016931a51027ffd12444349cb66c690eaaf5d594`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.ProdL2` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PairState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/pairstate.md) | 29 | `declaration-track:a92f61ac8df1a92bc9b4313bedb2e15143dd14db808baf2b11e1c726ef451a06` |
| 2 | `def` | [pairState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/pairstate-source-edition-2.md) | 32 | `declaration-track:f16733102e10b1d9dddd327b14ac8cda97b8823717cc8446898c219d0f18b484` |
| 3 | `def` | [pairSwap](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/pairswap.md) | 35 | `declaration-track:2cd94263b0c5eecd2498fb73ea27271bd279ff9e94e64a21d60c07f70b42534c` |
| 4 | `theorem` | [pairSwap_pairState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/pairswap-pairstate.md) | 45 | `result-track:9fae07ca2bb12467a1b3b85d7a6fd952fa9c14458984765f60f7be6b7256e267` |
| 5 | `theorem` | [pairSwap_involutive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/pairswap-involutive.md) | 48 | `result-track:7d14b00ac0248ccb264c26f7b4284c287fbf92b9c42f66deb0c9609a0144825a` |
| 6 | `def` | [interactionOperator](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/interactionoperator.md) | 51 | `declaration-track:272ed28dc216d91ae542569491b6bbd785b6859acd31eeb3d213fd40070e7358` |
| 7 | `theorem` | [interactionOperator_pairState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/interactionoperator-pairstate.md) | 55 | `result-track:35af8abc367801d914481e5fde519fc423afd669f7da3a72f7db35eb7daaa089` |
| 8 | `theorem` | [interactionOperator_selfAdjoint](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/interactionoperator-selfadjoint.md) | 60 | `result-track:2368dee73b853dcacfe69df36a0de6fa4fae5002fafaa97a06f3e6c3044bcb62` |
| 9 | `def` | [quadraticReadout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/quadraticreadout.md) | 73 | `declaration-track:2db1e5f8745875d547977cd56879e0b3913be30a57c4d6769f548e1bdd899482` |
| 10 | `def` | [compensatedReadout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/compensatedreadout.md) | 76 | `declaration-track:d56fdf41f92ff514daa299d01cfdcba8848778f5649de99223234c70178e23b5` |
| 11 | `theorem` | [interactionOperator_readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/interactionoperator-readout.md) | 80 | `result-track:ed203d99cf01870e62a7293d1c7c36d03a5a393bba12168d2e38541e75aa5334` |
| 12 | `theorem` | [quadraticReadout_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/quadraticreadout-sub.md) | 93 | `result-track:3d48a0f7fb8853bb2f57f311413b2455d443d43e1e7a94513160c0f6620e87ed` |
| 13 | `theorem` | [real_cross_selfAdjoint](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/real-cross-selfadjoint.md) | 98 | `result-track:a98b7ef8e62f0e41c52cc6841c38b1aba2073b96edc34a403c906e7b2fc893ca` |
| 14 | `theorem` | [quadraticReadout_add](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/quadraticreadout-add.md) | 107 | `result-track:74466dc340cafe5f83174f254f77cbbc2449f6f9dcc24e706943d91e440b145f` |
| 15 | `theorem` | [quadraticReadout_pullback](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/quadraticreadout-pullback.md) | 116 | `result-track:656d8d9c94be01a7c5a5556aea4af029ec8189364b2f8c3c4aee320a05e08ff7` |
| 16 | `theorem` | [compensatedReadout_jump](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/compensatedreadout-jump.md) | 123 | `result-track:bbfdf64a19c4eef311f45a07ec59b786198ef3dd66511680ec822f2c17180fcb` |
| 17 | `theorem` | [compensatedReadout_identity_jump](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/compensatedreadout-identity-jump.md) | 134 | `result-track:8e998f0954f35f14e088ce3f355389e5db7d73c308935c5e6596b9038ba84ba0` |
| 18 | `def` | [observableCommutator](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/observablecommutator.md) | 144 | `declaration-track:345cab8f4c210a48caf7d1885ce9fee607669e01cc81501bcc41976c77acb822` |
| 19 | `theorem` | [signed_work_algebra](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/signed-work-algebra.md) | 147 | `result-track:be806557366c118f00c05aae1883d4da9050b6cf1576b84435c0f654bfa2b718` |
| 20 | `theorem` | [compensatedReadout_hasDerivAt](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/compensatedreadout-hasderivat.md) | 164 | `result-track:adcf9a00b9ffa735b3acee9dc993e7444820c8759e16aa15952edbcc2935a326` |
| 21 | `theorem` | [compensatedReadout_hasDerivAt_of_skew](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/compensatedreadout-hasderivat-of-skew.md) | 183 | `result-track:b4f33e8ff38ecabb057f79b6b716557e11f9a7af31b33ce77f0f6eb0120e5815` |
| 22 | `theorem` | [compensatedReadout_hasDerivAt_of_cancelled_work](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/compensatedreadout-hasderivat-of-cancelled-work.md) | 197 | `result-track:09ebf9227fd32f15c94ebe4d02472df30f287d673c7dabaf146fa49f416d407a` |
| 23 | `def` | [signatureOperator](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/signatureoperator.md) | 211 | `declaration-track:0c1bcb7378b698c996b00f81a76e8818529d5d3c726071c0e55d083c9affca8d` |
| 24 | `theorem` | [signatureOperator_pairState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/signatureoperator-pairstate.md) | 217 | `result-track:61c221c43619e8496b6b97a3de12dec62cdb40b0b7a5661306437d16f6263944` |
| 25 | `theorem` | [signatureOperator_readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Diagnostic.lean/declarations/signatureoperator-readout.md) | 222 | `result-track:f72175f305f8ac021e91d52d1916881fe2c5e8b9ac13457241ec4d026be56bf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73f3da97b838f36b216c08fdf9810c9a7ddfc28d8b905ee96dc7c5417dbf61ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Diagnostic/Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
