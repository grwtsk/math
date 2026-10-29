# Verification target: Module Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11a3fbc9c897916b6b025056a1d23dc9b2de136",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11a3fbc9c897916b6b025056a1d23dc9b2de136`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Localization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLattice](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/islattice.md) | 70 | `declaration-track:ad9bb253251e0f49505cf36c80b466f25f629c601037dac6aee0bf5a9dc70869` |
| 2 | `instance` | [finite](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/finite.md) | 85 | `declaration-track:2de6ce126a1fe7b5bc2aa904e27e8109edfb43db435518e31d88fea6e8ffa98d` |
| 3 | `instance` | [smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/smul.md) | 90 | `declaration-track:acfb10295e9410046eadce8af49ce947db0075eeaeff309cb2aa8419a8d0f90d` |
| 4 | `lemma` | [of_le_of_isLattice_of_fg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/of-le-of-islattice-of-fg.md) | 103 | `result-track:23eabc1093e230c0979283761d85ed451312e72971e2eff8c274e58382725cde` |
| 5 | `instance` | [sup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/sup.md) | 109 | `declaration-track:4bf3fabc25ff7f2978eae2807527ede791d9fe4877cf4954e999c39d2a579b08` |
| 6 | `lemma` | [Module Lattice Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/span-range-eq-top-of-injective-of-rank-le.md) | 119 | `result-track:460eb519f9310c730445fb927d7e067d7c258a2cad6839010a1aba49848f1321` |
| 7 | `def` | [Module Lattice Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/extendofislattice.md) | 140 | `declaration-track:9e2cf5cf51568b2eb50518a799a5c06fceb077499b4287e465329e4114a1cff8` |
| 8 | `lemma` | [Module Lattice Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/extendofislattice-apply.md) | 154 | `result-track:a11a8c6f9a1bec8450a74f128081803a3ccb9ca023dc35fd260067fae5f7cfb1` |
| 9 | `lemma` | [of_rank_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/of-rank-le.md) | 163 | `result-track:ab0996d55f9281313d098595b704b64c182355fae577715c0b7f3cb9dee3a8e7` |
| 10 | `instance` | [free](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/free.md) | 174 | `declaration-track:c001fe7a87181417f890d86b368b17037aac790df56d8e06757ccd3b364212bf` |
| 11 | `lemma` | [rank'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/rank.md) | 180 | `result-track:c04711ad51543a528a3e6df7e4c42ee37be5b5df07a4c22fa41c0e3180d5144a` |
| 12 | `lemma` | [rank_of_pi](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/rank-of-pi.md) | 186 | `result-track:b8fb8049f491247132b8b1b3d2285963897477eefedfdf11c317038994dc4cc9` |
| 13 | `lemma` | [finrank_of_pi](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/finrank-of-pi.md) | 192 | `result-track:4cf4a30f557f299b82cd2579a9ee55e69742e7427187b3b9ad92b18c20d71a8b` |
| 14 | `instance` | [inf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleLatticeNamespaced.lean/declarations/inf.md) | 197 | `declaration-track:b870f1c3595a7ba2caab69429d6901034b7b15aaf6d8b1769617ca75fff4da46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92f79142677e94ef913b68b0c44a9f271d3ccd3c6b104eeb9d0c5307fba0049b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
