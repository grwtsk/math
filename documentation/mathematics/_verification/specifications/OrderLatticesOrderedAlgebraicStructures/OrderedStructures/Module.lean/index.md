# Verification target: Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "977d3036aa9a0708fc07663e016bf246e7c105a7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `977d3036aa9a0708fc07663e016bf246e7c105a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SMul` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instModuleOrderDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/instmoduleorderdual.md) | 29 | `declaration-track:31fe015d70fcc49495deac945246e28e7923def7ed6d16bc6d02f1323e8cd9ab` |
| 2 | `theorem` | [smul_neg_iff_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-neg-iff-of-pos.md) | 42 | `result-track:e68ac9f0410c8415e779079d0df4e940c2c3399323ddf4cf3159f8de3e88d219` |
| 3 | `theorem` | [smul_lt_smul_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-lt-smul-of-neg.md) | 53 | `result-track:4e06a86a39ec0313e4d84723c50b2432d8ebf95e0eb71857985f33b9daf37084` |
| 4 | `theorem` | [smul_le_smul_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-le-smul-of-nonpos.md) | 58 | `result-track:cad7ad23eb40a55e5abc016051ca717b2c8b110a0aeaf69b523f44c066e7972e` |
| 5 | `theorem` | [eq_of_smul_eq_smul_of_neg_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/eq-of-smul-eq-smul-of-neg-of-le.md) | 63 | `result-track:b3d00b490ac5a93453c1afbc23f5db63452ae5ea3286396cfc66cbffcc0bcaeb` |
| 6 | `theorem` | [lt_of_smul_lt_smul_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/lt-of-smul-lt-smul-of-nonpos.md) | 68 | `result-track:a5eeeed6d0f2766950e10c7ff89b44afebe968721d8cf8ae20507ec756f1f499` |
| 7 | `theorem` | [smul_lt_smul_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-lt-smul-iff-of-neg.md) | 73 | `result-track:a9992a70adcf7b4a876ed33754eb625ee57b24251a97568f796bc63949dc7345` |
| 8 | `theorem` | [smul_neg_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-neg-iff-of-neg.md) | 78 | `result-track:8fdedefaa2088338908006ea496bf84ce34d4408d7edd1bddf59f4a0e83c0b7b` |
| 9 | `theorem` | [smul_pos_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-pos-iff-of-neg.md) | 83 | `result-track:e34a113b388eebfe9f3fa88443d8beb1930d247f807a1b405bce9ab12c8ee6d0` |
| 10 | `theorem` | [smul_nonpos_of_nonpos_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-nonpos-of-nonpos-of-nonneg.md) | 88 | `result-track:c8111682ded6c368d101c452cd45f70a48c41aeaa294222304a3c3fcb4c2bfb9` |
| 11 | `theorem` | [smul_nonneg_of_nonpos_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-nonneg-of-nonpos-of-nonpos.md) | 94 | `result-track:04b05113e46b35d7677de6116f278f3d44d8f1354c78a15545b21fdb76a08397` |
| 12 | `theorem` | [antitone_smul_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/antitone-smul-left.md) | 107 | `result-track:16bb438456560680906de5000bf59e68da8083b35ed0c9536efff8520a71df6b` |
| 13 | `theorem` | [strict_anti_smul_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/strict-anti-smul-left.md) | 111 | `result-track:41a1094e5add67697e793c33d48d6051a5036a5388d9b7c317b40c0105d6b104` |
| 14 | `theorem` | [smul_add_smul_le_smul_add_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-add-smul-le-smul-add-smul.md) | 116 | `result-track:5c6a4249bc1d96ac6ad5db3befe8b9cc554b3bbab230b6ede51bacd312192b28` |
| 15 | `theorem` | [smul_add_smul_le_smul_add_smul'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-add-smul-le-smul-add-smul-source-edition-2.md) | 126 | `result-track:63606cdea3f27290c065c024284b5721888163699301e28257b7432dc1f01140` |
| 16 | `theorem` | [smul_add_smul_lt_smul_add_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-add-smul-lt-smul-add-smul.md) | 133 | `result-track:4398235d6d61bd42c5760a5883720f96204bbd68162db0528635785384bdad68` |
| 17 | `theorem` | [smul_add_smul_lt_smul_add_smul'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-add-smul-lt-smul-add-smul-source-edition-2.md) | 144 | `result-track:ce9fc33506ec12e01a95ca36f92a48696c75d2fd0637b31d04dc04069fb2e6e5` |
| 18 | `theorem` | [smul_le_smul_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-le-smul-iff-of-neg.md) | 158 | `result-track:816e8f488a1f92ad8138df396c56909ed66d3c22e3bd2aef45466893f47183e6` |
| 19 | `theorem` | [inv_smul_le_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/inv-smul-le-iff-of-neg.md) | 163 | `result-track:a0d175f937e1db918d12fadd405a15ee9d7441e2e540d4f3be5cb19e7a4b9eb9` |
| 20 | `theorem` | [inv_smul_lt_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/inv-smul-lt-iff-of-neg.md) | 167 | `result-track:52acd61af6cd7424719916efebbbd734889e9a58e70577cbf7ec0c9de196fbcc` |
| 21 | `theorem` | [smul_inv_le_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-inv-le-iff-of-neg.md) | 171 | `result-track:0e55af31a9f9b1e8e4c161e1c1222b53fa90314021db5d40b52ba9451e184451` |
| 22 | `theorem` | [smul_inv_lt_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-inv-lt-iff-of-neg.md) | 175 | `result-track:f37ccb6f778f0fc272881a741e8377f8448629fa2a6d3fd786d02740c96f7534` |
| 23 | `def` | [OrderIso.smulLeftDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/orderiso-smulleftdual.md) | 183 | `declaration-track:069ae4b5b257154c2775df792bece736eba71e573b813375897a5d4720a3e8aa` |
| 24 | `theorem` | [smul_lowerBounds_subset_upperBounds_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-lowerbounds-subset-upperbounds-smul.md) | 200 | `result-track:5fc081c2806c096e3dc49c27bc33a2ccdb733991cefe8019aabdd141e0509050` |
| 25 | `theorem` | [smul_upperBounds_subset_lowerBounds_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/smul-upperbounds-subset-lowerbounds-smul.md) | 205 | `result-track:738ec68683e2241326e3a00be5862d1eb2c55905389d5bb9c6d1555b5c77f2d3` |
| 26 | `theorem` | [BddBelow.smul_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/bddbelow-smul-of-nonpos.md) | 210 | `result-track:e7b5f8bc8b2617fb93f139f23f6f59bd22602a9c3d550c652c3296e2e260bfdc` |
| 27 | `theorem` | [BddAbove.smul_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/bddabove-smul-of-nonpos.md) | 214 | `result-track:0d03771ee62e48bd5873122b8bea83fac261d08e7bee35fdde9b2db372883ac0` |
| 28 | `theorem` | [lowerBounds_smul_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/lowerbounds-smul-of-neg.md) | 226 | `result-track:2149ba018f1ca0537e15a368fc353041155fed9e0081146da845439971491a75` |
| 29 | `theorem` | [upperBounds_smul_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/upperbounds-smul-of-neg.md) | 231 | `result-track:13bcc68a27497ff97ac55389f3251f6644b1c33f628b523bb960dacf0a6b1861` |
| 30 | `theorem` | [bddBelow_smul_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/bddbelow-smul-iff-of-neg.md) | 236 | `result-track:37d215b6f2c5b1858b29818aea342eaa90259f29ffeddd6320c53631a44411ce` |
| 31 | `theorem` | [bddAbove_smul_iff_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Module.lean/declarations/bddabove-smul-iff-of-neg.md) | 241 | `result-track:d0997435ee1a2fb28ba35d54e2b03c587e754a9cdb92a17c85b2f042482f0e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d218e9165984d0ef371f8bd403fb3e4f558c2f4e664943556121ff8518b0d51d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variantd20058af96b02ce48bc8af7796b23fef446c138c8c38af6eefbe0ef20068104d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
