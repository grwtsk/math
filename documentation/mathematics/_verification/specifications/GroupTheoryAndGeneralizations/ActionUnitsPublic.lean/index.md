# Verification target: Action Units Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a3770e7051a2f6b59d5fe259d2f58b8357e4475",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantbb19d979af008ba02310c1f787c7f3460407a182c46ea2db26b2480a797adf84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a3770e7051a2f6b59d5fe259d2f58b8357e4475`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantbb19d979af008ba02310c1f787c7f3460407a182c46ea2db26b2480a797adf84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantbb19d979af008ba02310c1f787c7f3460407a182c46ea2db26b2480a797adf84.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/instance-source-edition-3.md) | 33 | `declaration-track:ec7eda87eea2098c013a316d2bbf7f4bd1622e832fae8982a250f9a2acf50aee` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smul-def.md) | 35 | `result-track:69f1232cdca6faab5f3c6ab474e9519ea97f7466f27a68c9671e1a4cd57b4c3f` |
| 3 | `lemma` | [smul_mk_apply](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smul-mk-apply.md) | 38 | `result-track:09e46237d6e2b91cce1aa38261d7cc0c737c18be0890af5afeae03c49113f2be` |
| 4 | `lemma` | [smul_isUnit](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smul-isunit.md) | 42 | `result-track:c5ada1cf0e525b133e261f01aa0c33adef5fe2cd736b5379f01bc590d400b9b7` |
| 5 | `lemma` | [_root_.IsUnit.inv_smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/root-isunit-inv-smul.md) | 45 | `result-track:6e11afec68d4c98303eba91cd8ed91c7043ab97fa75b66c012e428fde1945c0f` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/instance.md) | 48 | `declaration-track:1c2c2f1fb73fb92bdcf4a90b0d578119abf42ebc2ed2ae44363d4792e9ebb86f` |
| 7 | `instance` | [instMulAction](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/instmulaction.md) | 52 | `declaration-track:699fbcc0a77d90b588af6d3d59a6163221885b9c8b1eb200b5bcc41673e07c8d` |
| 8 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smulcommclass-left.md) | 57 | `declaration-track:85a1f55102a4ca7d6efa94157c281bd962c2f9b8bf229ed67a533cecf62ea902` |
| 9 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smulcommclass-right.md) | 61 | `declaration-track:6d37429e9a2e45a1b1df11b1c6415defc9f3fc895b0497fcd37822f66f275c74` |
| 10 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:5a27378d58623ed33e0724766c2b21b5f6115ba1f6d90727c56460a46d8a1875` |
| 11 | `instance` | [mulAction'](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/mulaction.md) | 73 | `declaration-track:a7abf84133d68321a8c21771133c7591bb23d7e0d7df4fc3fd9ee5ef9efa016f` |
| 12 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/example.md) | 85 | `declaration-track:3a23b4ed7b6bd633bd12b62fdc329b8243c404452e95cad7fb1ebab2ab177209` |
| 13 | `lemma` | [smul_eq_mul](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smul-eq-mul.md) | 95 | `result-track:f76e6a8dd8e9305e6fcae502ef8f7fe892fe5a5198e169bcf118d157d3e3dd54` |
| 14 | `lemma` | [val_smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/val-smul.md) | 101 | `result-track:96ea78956252c662824676f0c0812c8f95205e1ec879d6ae71d08efc8bd46ebf` |
| 15 | `lemma` | [smul_inv](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smul-inv.md) | 106 | `result-track:08648adbc2666c966ae685501167c7e2807c593a1b0ff96780f22c7ec76ab205` |
| 16 | `instance` | [smulCommClass'](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/smulcommclass.md) | 111 | `declaration-track:47ce8766e96fe6a8d383c2456349d842a7675a53bfb1bb9c10afdd7e2856772b` |
| 17 | `instance` | [isScalarTower'](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/isscalartower.md) | 118 | `declaration-track:956d8e0a8c267c7457900ac606da971b0a373f59d3bffbd21cfb12174c9952bd` |
| 18 | `instance` | [isScalarTower'_left](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/isscalartower-left.md) | 125 | `declaration-track:5ce12061c1670b79d3faa7d268ff58583f95a4bc6e0c21030699610d0f6e12fc` |
| 19 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/example-source-edition-2.md) | 130 | `declaration-track:c5c642a68b45f31f8238c12d90ea1ae7de1d992142af88b4c536023b08d9b822` |
| 20 | `abbrev` | [mulDistribMulActionRight](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/muldistribmulactionright.md) | 150 | `declaration-track:ec51bf6d1da9ccd77f4939873b9e22352a420bba2423508a51ab3ab42d477de9` |
| 21 | `lemma` | [coe_smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/coe-smul.md) | 159 | `result-track:596e40cdf505d4ce88804cd8d39218c9b0ac51955a13b4859354a25fe983e985` |
| 22 | `lemma` | [coe_inv_smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/coe-inv-smul.md) | 160 | `result-track:5f6c1b1c3be172949f2f359bdd63e2f5f3c4f8a34ba3d0d6299c9b3856f1dbf2` |
| 23 | `lemma` | [IsUnit.smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsPublic.lean/declarations/isunit-smul.md) | 166 | `result-track:448b0b7a8d42ae210034ccf939b590ef3dddd4506bd20160e70f029fb7a01b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94a23672208de0c85a4848929a0c52630c108c9d5af9b100c3d2e53457cd342a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variantbb19d979af008ba02310c1f787c7f3460407a182c46ea2db26b2480a797adf84.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variantbb19d979af008ba02310c1f787c7f3460407a182c46ea2db26b2480a797adf84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
