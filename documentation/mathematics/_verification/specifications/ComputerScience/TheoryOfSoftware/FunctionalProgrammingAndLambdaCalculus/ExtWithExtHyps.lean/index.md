# Verification target: Ext With Ext Hyps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80cb9849228dda1a7536d70bcb3a48d76d9383a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80cb9849228dda1a7536d70bcb3a48d76d9383a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext.Attr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withExtHyps](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/withexthyps.md) | 19 | `declaration-track:4e8559dfed1db7006254d1feadb572ff86b8ebe9f67edd4d6856f4388b881c77` |
| 2 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/elab-source-edition-3.md) | 51 | `declaration-track:ac453dc5b3805c24debad7125e0f540c0ed614ccc99241a6b0d12cf90a2752c8` |
| 3 | `def` | [mkIff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/mkiff.md) | 58 | `declaration-track:2bebb3a9dd918304bb5824be0ff9d996484c3b5769c03753ace1c88f054f8389` |
| 4 | `def` | [mkAndN](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/mkandn.md) | 61 | `declaration-track:d0f2f84a15e745dbd230a39ce82a6505ae66b646b04a4af3e263d4206fd809ba` |
| 5 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/elab.md) | 70 | `declaration-track:0b41413034d71d5a3d40a653fe90ada9f97ff29f43ef7b29cacec194f15bce79` |
| 6 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/macro-rules.md) | 75 | `declaration-track:dec3d69c380c75e434b4471fc9a7db7a55dc0b7af9db39cc83b4581a3dd7fde0` |
| 7 | `theorem` | [$extIffName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/extiffname.md) | 86 | `result-track:b8adbc5c2a70338546f256585cb0e9f2a546bea8163c0d063c60019ebfa6b01f` |
| 8 | `def` | [applyExtLemma](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/applyextlemma.md) | 92 | `declaration-track:920676961372f96a846ed8437a491531e218d55151b80a96524bc4afbe8d1ef3` |
| 9 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/elab-source-edition-2.md) | 116 | `declaration-track:4f1b7c70ac814fc6def5aef6dc1973b3a173bb40a104a350782f5206ab40a199` |
| 10 | `def` | [tryIntros](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/tryintros.md) | 122 | `declaration-track:5c71bac5dcf98cc44e216a9895002015b84c139fcd2d8f56a43d531ec71bfa9c` |
| 11 | `def` | [withExt1](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/withext1.md) | 138 | `declaration-track:bbb8b0727d8b4ec4299d749de20678178876d0ddf72dcb4962498c17c7e0a500` |
| 12 | `def` | [withExtN](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/withextn.md) | 149 | `declaration-track:b7e554cdabe6f2de7d26bb7cf687d9e8d7244a4eb31a44ce98ca522803666498` |
| 13 | `def` | [extCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/extcore.md) | 165 | `declaration-track:013cd2efdd4bae4eb87ab3aeba1c7470367d8c54802fa5e407184032d6345108` |
| 14 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/syntax-source-edition-3.md) | 177 | `declaration-track:e97cc52200e4ecea7fc9355c346aa7d4d1f28443426aa415aba243827d63a0f5` |
| 15 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/elab-rules.md) | 178 | `declaration-track:ce9680b7bb2736295eb3cbc1d397fc83062d247825ecb60729631627b4b34e85` |
| 16 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/macro.md) | 193 | `declaration-track:d4094146740626b67e7d864a6c9c8948449d200f6a35c5ee3d3e840cf3a68648` |
| 17 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/syntax-source-edition-2.md) | 199 | `declaration-track:c144be69b8c7c2ae2ce2768d1f152e5e4dd80229265807aa9def15717efb0de0` |
| 18 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/syntax.md) | 201 | `declaration-track:badf4b67c3474a7095c5d9629fc03b8991b34e0b64d4132a16f3fba15eeaf72b` |
| 19 | `theorem` | [Prod.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/prod-ext.md) | 207 | `result-track:133a82dcc80324009285bbe8c5fde909a16bcee7459d0bd1279321f5b5f646fd` |
| 20 | `theorem` | [PProd.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/pprod-ext.md) | 210 | `result-track:38326416c523d12993cb95cafbd9ea6d2b6d8d498d5d662b101ad3b8d4e067d7` |
| 21 | `theorem` | [Sigma.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/sigma-ext.md) | 213 | `result-track:9b408d8fbf31262722e1e852340fc68e484707380bd4108077191db83ee7f5cb` |
| 22 | `theorem` | [PSigma.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/psigma-ext.md) | 216 | `result-track:77e88c7573dd318dcd6484a735d748e10acf45faf2c83eef571ac6dfc086c570` |
| 23 | `theorem` | [PUnit.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/punit-ext.md) | 219 | `result-track:5686e677a06346d9838426156bd7c3e9f262fdb9c79dfdbd85740281cd3ff636` |
| 24 | `theorem` | [Unit.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtWithExtHyps.lean/declarations/unit-ext.md) | 220 | `result-track:28f7e0c69fda454164466d090e7fc99049bc0bcbdcc1ce70b2c353e79f9c1b45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3716a22e0128be91fd5400ce6b9f79a0f3dfe7d04695867b4cf6ecaccfdaafa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
