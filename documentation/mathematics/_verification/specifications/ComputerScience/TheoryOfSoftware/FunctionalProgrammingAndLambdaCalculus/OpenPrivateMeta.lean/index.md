# Verification target: Open Private Meta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d3686a2641c201cd81f259347da873baff47464",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d3686a2641c201cd81f259347da873baff47464`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Parser.Module` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Meta.collectPrivateIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/meta-collectprivatein.md) | 15 | `declaration-track:9616adf4ed71b5c6eda5de95779230f086edd3028dc26a0df2444a93da346df2` |
| 2 | `def` | [Environment.moduleIdxForModule?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/environment-moduleidxformodule.md) | 26 | `declaration-track:f2b24524264b43e1a4a05e3859d9b1f79ab0ba184959488607595a71261a6ab0` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/instance.md) | 29 | `declaration-track:9a8c6b42fdc440c837a9f20150b8eb06184ab9a396710777c4659ac2f695e9f0` |
| 4 | `def` | [Environment.declsInModuleIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/environment-declsinmoduleidx.md) | 32 | `declaration-track:dac42030eae915eb0e63bfed46d6f6eef45875c3902fd8c41520cb6547268aeb` |
| 5 | `def` | [Elab.addModuleInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/elab-addmoduleinfo.md) | 36 | `declaration-track:3edcc48e65b6f056d8e373eecf1423e7ce53c7c7593157a9057f658ea10b967b` |
| 6 | `def` | [elabOpenPrivateLike](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/elabopenprivatelike.md) | 48 | `declaration-track:986782f16331ab727a51e69a81a756829362e4b8cf9bdf9ffc9b8ba310698d1d` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/syntax.md) | 102 | `declaration-track:3541e7653d35584a3fb4370bf033f8d1a0c24e17f87c20eb93b6a3321f389fd8` |
| 8 | `def` | [elabOpenPrivate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/elabopenprivate.md) | 106 | `declaration-track:738a6095c73667d64f9d1fef1c89e873e140df8d7fd853080c7b0ab63ceb2e61` |
| 9 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/syntax-source-edition-2.md) | 122 | `declaration-track:7ae672bdbaf734f3e85f84bb42c915ab801680e9ba7c77afac12c1da582b5c7c` |
| 10 | `def` | [elabExportPrivate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OpenPrivateMeta.lean/declarations/elabexportprivate.md) | 126 | `declaration-track:7e63b2cd244e9ed30d4ab92ddceeb7b56675419dcc17c2514623f7c45c150e6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3276861555b9578e33d24a27bd8be034a6a0ca7feeaf85447ac86875e8ec7eca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianteb1bc6cb3b08f5aa8e534584c4ed0bcbc779f112b24b8c0b80cf3fddec2390b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
