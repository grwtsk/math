# Verification target: Logic Unique Namespaced Unique Iff Exists Unique

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fe5d1aa63e76ba98a5ffd542067bc48244ab2db",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fe5d1aa63e76ba98a5ffd542067bc48244ab2db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.IsEmpty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Inhabit` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique.md) | 59 | `declaration-track:3becdbd9f3c24328700c0c50eda5e09edde4ba90292dd27e574414ac55aa3b1a` |
| 2 | `theorem` | [unique_iff_existsUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique-iff-existsunique.md) | 65 | `result-track:0f10532b34ed1d45ce5c828c9bdb4abceeedad0115a4336876c4c4f5365f9ac0` |
| 3 | `theorem` | [unique_subtype_iff_existsUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique-subtype-iff-existsunique.md) | 71 | `result-track:8f1160fa7122037ab0d59e2baecd83cd322c19ae3dbbb7a9b574078dfd684537` |
| 4 | `abbrev` | [uniqueOfSubsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/uniqueofsubsingleton.md) | 87 | `declaration-track:0818d78af9b26b5d765e67cd1dea79813e6c5f91798cf147e3393dee48d1a364` |
| 5 | `instance` | [PUnit.instUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/punit-instunique.md) | 91 | `declaration-track:64453e952a3d9d6bb8b5ee8196b992a90f470eeac6ef06aad223678934658fc6` |
| 6 | `theorem` | [PUnit.default_eq_unit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/punit-default-eq-unit.md) | 96 | `result-track:ac190fe4c1b7fe615c1cd4fbaaf37ead244081010e76d183772cd500103892f5` |
| 7 | `def` | [uniqueProp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/uniqueprop.md) | 100 | `declaration-track:ac30e9a7f021e875cad92409c5b5d76be73b23159a7dc7245110f39fec375841` |
| 8 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/instance-source-edition-3.md) | 104 | `declaration-track:73c0b43ae40c9440e66181dd1ccdc76e33b5853cf81190fc71e23bd2322ccce1` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/instance-source-edition-4.md) | 116 | `declaration-track:b00c0dce01b5727f8ffd41f2496d671be255f6c919893253c34fa5399d2fc917` |
| 10 | `theorem` | [eq_default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/eq-default.md) | 119 | `result-track:449730d94b93fdea4e95bdf672ff66d09439032058200b25f4b5db0f288faa8b` |
| 11 | `theorem` | [default_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/default-eq.md) | 122 | `result-track:7f2ce2dd8a48d6d8855d84643c76cf1dddc24cab959f003bf6dd12731fcff94c` |
| 12 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/instance-source-edition-2.md) | 126 | `declaration-track:396138c7dac92df228e8fdd0d5926143a8656391650080cadf0dd37a0cb30de7` |
| 13 | `theorem` | [forall_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/forall-iff.md) | 129 | `result-track:44883539129ff3f3021cc5e949ad2cc1218a7c1ce279bc9cf14c02809f68a043` |
| 14 | `theorem` | [exists_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/exists-iff.md) | 132 | `result-track:f7b273d6453ed88645959e17989f6b88445f6679d052cfd08f7c013bbb629951` |
| 15 | `theorem` | [subsingleton_unique'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/subsingleton-unique.md) | 140 | `result-track:90ea00d6d38434bdb776ba628d47d1294c4e731597148e2e54ee6eab6a27380a` |
| 16 | `instance` | [subsingleton_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/subsingleton-unique-source-edition-2.md) | 143 | `declaration-track:b34d348ae0fb284eff38aa33d11cf6f3c522767ad3a9a3e49ced6621418889ad` |
| 17 | `abbrev` | [mk'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/mk.md) | 148 | `declaration-track:2090993eb210f679800a212cd9a7ae80cc50f932c32a4b4f5a43cb47f9a282e9` |
| 18 | `theorem` | [nonempty_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/nonempty-unique.md) | 153 | `result-track:e3964ff36cb06f02f3400b22fd199de5cf007739e1427e763a49640dfef84576` |
| 19 | `theorem` | [unique_iff_subsingleton_and_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique-iff-subsingleton-and-nonempty.md) | 157 | `result-track:850bb6f48a3c1cb59eb37054ed945af1852eaa2f96c5df6f503937658959dd5e` |
| 20 | `theorem` | [Pi.default_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/pi-default-def.md) | 165 | `result-track:2ebbbff9e8cc9468cf9e2067d5f8bda925eacee135d1957722b7177f9d47ac9a` |
| 21 | `theorem` | [Pi.default_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/pi-default-apply.md) | 169 | `result-track:f883fa0502906089235f2fa04e2748b6889e575c912c4b1210288501d3ab7e43` |
| 22 | `instance` | [Pi.unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/pi-unique.md) | 173 | `declaration-track:3610bef4bfe25afe782d9376ac7e94ebcee7147c0a4ebcb6b519660f85a5d097` |
| 23 | `instance` | [Pi.uniqueOfIsEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/pi-uniqueofisempty.md) | 177 | `declaration-track:f964e827d752bdc58fadde91de238ef937ca0e2015bc67b3289289286b5aabd5` |
| 24 | `theorem` | [eq_const_of_subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/eq-const-of-subsingleton.md) | 181 | `result-track:b9825a781f489f9d4b3c00130f806643859bba785a2e600749a4f4676a633b68` |
| 25 | `theorem` | [eq_const_of_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/eq-const-of-unique.md) | 185 | `result-track:269ac17f4363b5dcbd1805aefd5e60bdf1c746ff8df3796cb26291e55412b667` |
| 26 | `theorem` | [heq_const_of_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/heq-const-of-unique.md) | 188 | `result-track:5740f4faa6dd6b6aa2cec0764692d26bc0633ea628b7f91d8b81a1d2c4f9c7cb` |
| 27 | `theorem` | [Injective.subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/injective-subsingleton.md) | 198 | `result-track:c310de05ec6f44464ad5c4bf9a2a568bcfd11a798229e052f0bd19100330ccaf` |
| 28 | `theorem` | [Surjective.subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/surjective-subsingleton.md) | 203 | `result-track:e44f8d529d501c907747eb9bc5fb291216e68428283d2811b356511679b4e3f9` |
| 29 | `def` | [Surjective.unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/surjective-unique.md) | 208 | `declaration-track:392cd78ecd16b0aa3e314d2a300bf843e00923920a02d36fbad00501a33a320b` |
| 30 | `def` | [Injective.unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/injective-unique.md) | 213 | `declaration-track:327a01f3ddbf9171321df792e412bc7dab5dac9d22790277c2d5deb8d99f3425` |
| 31 | `def` | [Surjective.uniqueOfSurjectiveConst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/surjective-uniqueofsurjectiveconst.md) | 217 | `declaration-track:d74d93249d459cd261acdb0d3ccee7ee223d43f6e0d41b737a6f8e9fd0e92e2e` |
| 32 | `def` | [uniqueElim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/uniqueelim.md) | 228 | `declaration-track:3d7547af7e56502a8c545315122ec122d90ff7bd1847cf98436ea6da37f91611` |
| 33 | `theorem` | [uniqueElim_default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/uniqueelim-default.md) | 233 | `result-track:c2538be0a4d082ccf88867660137cf5864e87393012e548fa54123df62367414` |
| 34 | `theorem` | [uniqueElim_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/uniqueelim-const.md) | 237 | `result-track:ebacf51e7cdb34a54ca26c5b6f4f01fe813c029a2c0a26ca970ff553883d5019` |
| 35 | `theorem` | [Unique.bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique-bijective.md) | 245 | `result-track:7ae91bf9f0ca612c10c3f7cb5bec3d29d5fe493828471375a36e29e4862e06af` |
| 36 | `theorem` | [subsingleton_iff_isEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/subsingleton-iff-isempty.md) | 252 | `result-track:23191409437d3587a27e9c111026fb5ec1f8e96bd2e57816b2647c9653c4c72f` |
| 37 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/instance.md) | 257 | `declaration-track:32930762291f392757b0a8a00b403070528e27b9018eb15e6a6bb15042169035` |
| 38 | `instance` | [Unique.subtypeEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique-subtypeeq.md) | 264 | `declaration-track:15e3a94785dd510fa00e2f2a72247f9b56d93f281b113ef993dda37dbf8ef145` |
| 39 | `instance` | [Unique.subtypeEq'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/unique-subtypeeq-source-edition-2.md) | 268 | `declaration-track:9f822a2af2185a587637cbea9ed25dd42e94fcef59b9e95b9dfb38c9a0c5c188` |
| 40 | `instance` | [Fin.instUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicUniqueNamespacedUniqueIffExistsUnique.lean/declarations/fin-instunique.md) | 274 | `declaration-track:7cf14c723957ffe8b8cfc8c5bac20a33fdc6329b146548d4c3775646204821e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c203ad7a74dabb732c8620dc777650dc346cd4518556eb82748566b162db1eb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant9f5385c1a196c06ec26d09ceb887eb6ee6b6fcf3a842d963b4a994aed5d717d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
