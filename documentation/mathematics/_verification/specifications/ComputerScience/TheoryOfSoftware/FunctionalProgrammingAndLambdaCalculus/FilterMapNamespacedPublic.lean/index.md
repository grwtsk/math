# Verification target: Filter Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc833ea93d5863f75424ff0903ee4be0df5bf442",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc833ea93d5863f75424ff0903ee4be0df5bf442`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.stepAsHetT_filterMapWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-stepashett-filtermapwithpostcondition.md) | 25 | `result-track:aa950fef3ec5f9db0878aabe6c39645e664e8476d9fbf434f8f07ee3aeefe3c0` |
| 2 | `theorem` | [IterM.Equiv.filterMapWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-filtermapwithpostcondition.md) | 87 | `result-track:66ddfef0682ed3959c117c98a9d64bb37c338f67e852f3d5f716a8fe0062766b` |
| 3 | `theorem` | [IterM.Equiv.filterWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-filterwithpostcondition.md) | 142 | `result-track:78b7b0c5f0c80d9da1f319607ebc1d8416ea808fd01873ba00ab5e716cbbea90` |
| 4 | `theorem` | [IterM.Equiv.mapWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-mapwithpostcondition.md) | 151 | `result-track:2893bc1422d73a6322be5866568e085e061d14fd74c163873544ec525cff3244` |
| 5 | `theorem` | [IterM.Equiv.filterMapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-filtermapm.md) | 160 | `result-track:cc73ae3eb92a38c7f564bb036b854f5fb6e47435f409cd15a1319160fca03050` |
| 6 | `theorem` | [IterM.Equiv.filterM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-filterm.md) | 169 | `result-track:852093664c1e01adf51e008ae59880e4d6287b5c4c2f6a459c632dfe0ecc0e55` |
| 7 | `theorem` | [IterM.Equiv.mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-mapm.md) | 178 | `result-track:0b153580f3e7c35999b883d2571adb85240c1f0db415a887c28226f70fd1f060` |
| 8 | `theorem` | [IterM.Equiv.filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-filtermap.md) | 187 | `result-track:3e2cf7eba64015c82bb28112baca471f1a63658ba80715ba1428df8ef525ad02` |
| 9 | `theorem` | [IterM.Equiv.filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-filter.md) | 195 | `result-track:0642ea5ced3a2c674f96982d7cb36bcdfdf71dfed0aea3dc05c74b9ab31f24e1` |
| 10 | `theorem` | [IterM.Equiv.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapNamespacedPublic.lean/declarations/iterm-equiv-map.md) | 203 | `result-track:f59e2a50fc9bc72233f7162b80783eb84a3e76f11d3e8152aa04274583204272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f75326e64b43eb4257f60837f502ed4f86b47a7d58d6c9c49b9f23a98bed7ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
