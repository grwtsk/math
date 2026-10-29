# Verification target: Controller Energy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9975ee01634b243f1b07caf467ecb976f01632",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9975ee01634b243f1b07caf467ecb976f01632`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trackingEnergy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/trackingenergy.md) | 26 | `declaration-track:494135c8f751963b77283623bb73a77fe102aaaf1286d86dfada510f67e3fa77` |
| 2 | `def` | [canonicalController](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/canonicalcontroller.md) | 30 | `declaration-track:705e6c1c3b571d958819ca90f52bd204294d9bf6ec2c03de88c64f829807963f` |
| 3 | `theorem` | [canonical_residual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/canonical-residual.md) | 34 | `result-track:17aab272d547d82805bc9ffa774ae8c4c30477f2e3eab3d08cc75fa4024ac63e` |
| 4 | `theorem` | [canonical_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/canonical-energy.md) | 44 | `result-track:b5c739fa523f8e7129bd85f9c08eeed925377fc5390bbb28196e5a4f45d4e5f5` |
| 5 | `theorem` | [canonical_cross_term](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/canonical-cross-term.md) | 63 | `result-track:06f884a0ffeaf80418f27123c022b26c057c37571e1f33cee4a58b81a503102c` |
| 6 | `theorem` | [trackingEnergy_translate_canonical](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/trackingenergy-translate-canonical.md) | 72 | `result-track:de5afa7dec0f25a495fcf9cd9f93cd084561fc4d69e71f27a46287e1ef8da09a` |
| 7 | `theorem` | [regularizedMass_le_trackingEnergy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/regularizedmass-le-trackingenergy.md) | 88 | `result-track:41d152d24e807b7986760510af8fc325e8a3021eac8a20bba29db441d4cc9476` |
| 8 | `theorem` | [sourceMass_le_full_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/sourcemass-le-full-energy.md) | 99 | `result-track:659e5c6aa9b9426d4319a17c609cca49c0692940110fc70948afeeaec8b7eb50` |
| 9 | `theorem` | [isLeast_trackingEnergy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/isleast-trackingenergy.md) | 104 | `result-track:8804b005e4bc62963c22878f9e49d6be40d005a651c829456013820b6dd09819` |
| 10 | `theorem` | [sourceMass_isLeast_full_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/sourcemass-isleast-full-energy.md) | 114 | `result-track:89f1a6585c01c67d4e8d453dbe5d0b88604ee7eb58a5c0ffc63e9744c00ca170` |
| 11 | `theorem` | [truncatedMass_le_full_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/truncatedmass-le-full-energy.md) | 120 | `result-track:4e6a6ccd857201a217a630503257905c1d6a990bb003f0d679508f7dc08c4567` |
| 12 | `theorem` | [sourceMass_canonical_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ControllerEnergyNamespaced.lean/declarations/sourcemass-canonical-energy.md) | 127 | `result-track:f7f52b40d574cc75b43fad4aa0cc7efc660a6e3fa5d1ca1d2b93d16adf361526` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff2760aaad3ec2b2d26bdbd78516f2ebc6ac300c08014e90a9bdf73d5e3bae0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerEnergy/Variant0eaebb797a1cadf17600055173c44222857e00a009fad4cfff0a1cb0ad3d321a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
