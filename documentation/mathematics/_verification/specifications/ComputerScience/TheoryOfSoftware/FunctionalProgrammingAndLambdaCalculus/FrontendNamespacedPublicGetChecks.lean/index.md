# Verification target: Frontend Namespaced Public Get Checks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean.json)

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
| 1 | `inductive` | [LintVerbosity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/lintverbosity.md) | 69 | `declaration-track:a841cdb2122eb40e07e8bc9e3723df65b2a97a2c889348d76e1d3c967d9b62ff` |
| 2 | `def` | [getChecks](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/getchecks.md) | 86 | `declaration-track:1a485b7993c209dfcb499daf10c2517b51965a67d3c98123f6a24f3431eedab2` |
| 3 | `def` | [traceLintCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/tracelintcore.md) | 109 | `declaration-track:fe08edb8aad50b6434ac977f70fbdadf413305a87e6d63c2443d2867092f7e84` |
| 4 | `def` | [traceLint](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/tracelint.md) | 121 | `declaration-track:fe492cc25674c800724f51bc67d17659c7465595bf8f21c70a85bb1ee0bcafdd` |
| 5 | `def` | [lintCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/lintcore.md) | 132 | `declaration-track:c9b4419d60cba2dc0b6665bc66b149fa1ded8ca9e0688a88ca6e9f317978e5b1` |
| 6 | `def` | [sortResults](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/sortresults.md) | 176 | `declaration-track:89b590e86168443bccb20c8275403b2a9cb76835e844e6da585e56dc7bafded5` |
| 7 | `def` | [printWarning](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/printwarning.md) | 184 | `declaration-track:1f5e7bff332d46798e85741c3552f268554a503dc0334891099d63a7472130db` |
| 8 | `def` | [printWarnings](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/printwarnings.md) | 195 | `declaration-track:9a1ad6eeb1d3ba0c453c1fe1261c9ac207b114a5d67fe702c1cc50067a88b287` |
| 9 | `def` | [groupedByFilename](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/groupedbyfilename.md) | 205 | `declaration-track:2c013d275b9a0efee053abee539d85da1d3290caac2a6cc43757f741619f673d` |
| 10 | `def` | [formatLinterResults](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/formatlinterresults.md) | 228 | `declaration-track:8e2c246611924ba5cd97582db9fa6663fec1a9fa4ef20fb852f7ce893e2568e0` |
| 11 | `def` | [getDeclsInCurrModule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/getdeclsincurrmodule.md) | 260 | `declaration-track:8fc2eb42340ff0157d452b8ca6bf59c97e03e9c13ddfaffedab9bac09d43ebfe` |
| 12 | `def` | [getAllDecls](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/getalldecls.md) | 264 | `declaration-track:ea6d3139670a00ef48e61884fc856c02bd054884e7db1eb27dfcec41c519db4f` |
| 13 | `def` | [getDeclsInPackage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/getdeclsinpackage.md) | 268 | `declaration-track:1e045d0b2c13a54327e384ebc5873e4b2b248524ea0325fd5539635f028843dc` |
| 14 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/syntax.md) | 278 | `declaration-track:74d52fb1dbb6ac5578b4fabea2a61d85e66c0545ac8f748cdd2b1aa989aa5413` |
| 15 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/elab.md) | 284 | `declaration-track:6617a6a6d2adaa65254447cfc1c084e51a137890001c126a9ba8dec93ecfcc52` |
| 16 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/elab-source-edition-2.md) | 327 | `declaration-track:a25f46abea18f4b136386ddd1150ea0da6ff80adcbe0551a06e816fe46efffcd` |
| 17 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendNamespacedPublicGetChecks.lean/declarations/initialize.md) | 336 | `declaration-track:ed90911fb785b28e0733fa2807b953f512fd48b098f584f4c7560d2303330cbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77ff795a03f27b7ed20feb5553b2f7e58a0ad2ba10efde697f716c5cfdb666d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
