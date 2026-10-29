# Verification target: Module End Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b8c96a03acf3889e9ddb1d9f36f8db48a5a70e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b8c96a03acf3889e9ddb1d9f36f8db48a5a70e5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddMonoid.End.natCast_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/addmonoid-end-natcast-def.md) | 30 | `result-track:22ff2b33f5a6d31627ef9020e12561dda581960750c80c9e1b752130a996528f` |
| 2 | `def` | [Module.toAddMonoidEnd](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/module-toaddmonoidend.md) | 41 | `declaration-track:073f30ff9d961253adca5dcbc1d846338dcd02461bcf364b5199092d3d8ce475` |
| 3 | `def` | [smulAddHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/smuladdhom.md) | 49 | `declaration-track:f6177281b5c6da26eb0aecf8ab08a36a8a4222612dd22f3ea18ce58bc0bcf84b` |
| 4 | `theorem` | [smulAddHom_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/smuladdhom-apply.md) | 55 | `result-track:fff984e0b4908feebc77fccc094d5c88349dad74ec1a103ec43b0696eb9f52fd` |
| 5 | `lemma` | [IsAddUnit.smul_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/isaddunit-smul-left.md) | 60 | `result-track:4f164b5414f33ae07a298ad5aa092fc00930d070736eb29905ed4618a165b97c` |
| 6 | `lemma` | [IsAddUnit.smul_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/isaddunit-smul-right.md) | 66 | `result-track:861332b07494619580a6f0ef26705c1d793be2aee7ae3d3d8fded60d29858989` |
| 7 | `theorem` | [AddMonoid.End.intCast_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEndPublic.lean/declarations/addmonoid-end-intcast-def.md) | 75 | `result-track:dfc40abcb3950cd6283032506e81bdfa2278ec0f8fb7a76d95b3372e829ce9c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c4c5c1ba9f7236280e0d518ed034a1821e9c6803e41b0731bab3a6e3e176cb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
