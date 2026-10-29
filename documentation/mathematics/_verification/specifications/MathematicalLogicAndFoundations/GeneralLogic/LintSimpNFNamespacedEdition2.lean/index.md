# Verification target: Lint Simp NFNamespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24254797c52d5831b59c57f145bdbfbb82ad042",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24254797c52d5831b59c57f145bdbfbb82ad042`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/equiv.md) | 13 | `declaration-track:d663600b228816b8420aa88d6126d26a4bf505461df34f29ad15d09051f809c4` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/instance.md) | 21 | `declaration-track:a1a39eb2752494a592856d5c76da6a671526b911c023b2dc6edd01e3856619f3` |
| 3 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/symm.md) | 23 | `declaration-track:46d951a6b0053790e45958f99d6b2b477fe0b2bada5f4857d4b4cf119901334c` |
| 4 | `def` | [sumCompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/sumcompl.md) | 25 | `declaration-track:e7fff46481d71323b096182ed6ecc2cbf2521c6e7b0565ef420ce34f4f43eb98` |
| 5 | `theorem` | [sumCompl_apply_symm_of_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/sumcompl-apply-symm-of-pos.md) | 31 | `result-track:b952694630a2c6abe17785bb85276a10bf9357825cf6c9979bb2accfc3d01fdf` |
| 6 | `def` | [foo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/foo.md) | 35 | `declaration-track:a7a46df4da131c7bd7d02426c5f6d59acc63c15f220abaa910a8e7ec66de7138` |
| 7 | `theorem` | [foo_eq_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/foo-eq-id.md) | 38 | `result-track:c85e1053aca8fb8f675effdb3b2c37d9502522bf22fa54663bb85c447c653bbe` |
| 8 | `theorem` | [foo_eq_ite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/foo-eq-ite.md) | 44 | `result-track:a500a25f71474d28cad90cb1de59a3ecf82515af025d3926b0a55a498594a4f5` |
| 9 | `axiom` | [test_sorry](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/test-sorry.md) | 51 | `declaration-track:dc59a6e1b885e5622c8306617b6155255676be0fd5dfca8362d62dc1246ef6dd` |
| 10 | `theorem` | [ofFn_getElem_eq_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/offn-getelem-eq-map.md) | 54 | `result-track:c4b9fc8f66e1784c9a2dc451486bb284c473feddf5f622327c5ae89f2f83808e` |
| 11 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/example.md) | 57 | `declaration-track:214ecafc9dfe268e6083c2c8f667f93a73616ccf2ef9d9253b205e4591ebd3bb` |
| 12 | `def` | [eqToFun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/eqtofun.md) | 64 | `declaration-track:7551733f4ca5c31ec616297a32eb65eeafefe451b0c740f3dabb722056e7fdc1` |
| 13 | `theorem` | [eqToFun_comp_eq_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/eqtofun-comp-eq-self.md) | 67 | `result-track:1a33fe9fd40c27e13c88b4d3b64046bfd1f6cb4c18cee687c31833b69ecd70bb` |
| 14 | `theorem` | [eqToFun_comp_iso_hom_eq_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/eqtofun-comp-iso-hom-eq-self.md) | 73 | `result-track:3c9f86ced8dcf931ff3f00c3253615aee08173f2cb7b8be8bdbc2f417dfe9394` |
| 15 | `class` | [MyClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/myclass.md) | 83 | `declaration-track:731105fc565356d964c70df3816ccd4049c5b4ae5963ee296af43d6a2d22b6e8` |
| 16 | `structure` | [Bundle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/bundle.md) | 86 | `declaration-track:ffb977dc8e3725531120cb1fabff80ea2e7adb6632b38ce547de871045ec3626` |
| 17 | `def` | [Bundle.of](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/bundle-of.md) | 92 | `declaration-track:eeca8de58f7ef4829aa4223e41f99223672cd2da1885da6c0370fc666cb3479a` |
| 18 | `theorem` | [Bundle.of_carrier](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/bundle-of-carrier.md) | 96 | `result-track:f68671c7868f36d9b40d7c72bdf94958248eeceab92148d2c521fb1401d3872b` |
| 19 | `theorem` | [Bundle.of_op](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LintSimpNFNamespacedEdition2.lean/declarations/bundle-of-op.md) | 103 | `result-track:c83f7c8209f40af95c852ecf1a8f3bef884de5e38c10f99093fe5845739a9a3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6e671e2aa1d1b9ba47764d94b425d902482af6d6f9a6686f0c1ac7b0d761cac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
