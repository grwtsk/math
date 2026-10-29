# Verification target: Levi Civita Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1dc2d08df84a8a141740579cca3139736f0719a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LeviCivitaPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/LeviCivitaPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1dc2d08df84a8a141740579cca3139736f0719a`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean.json)

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
| 1 | `lemma` | [injective_inner_mdifferentiableAt_section](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/injective-inner-mdifferentiableat-section.md) | 95 | `result-track:87737ee68f5ea28bf786d999ce2b23015494cda2b5ceccc1acfc5f4db598009e` |
| 2 | `lemma` | [injective_inner_contMDiffAt_section](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/injective-inner-contmdiffat-section.md) | 108 | `result-track:90a04cb07806def095c81aeeb1a22d27c4b59782ab6e0f49662e7bd817490aa2` |
| 3 | `lemma` | [injective_inner_mdifferentiableAt_vectorField](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/injective-inner-mdifferentiableat-vectorfield.md) | 130 | `result-track:c322876fb9935fb4ea37b79cf1518c971b14e7aa33ff16ec3b35daec07ab5564` |
| 4 | `lemma` | [injective_inner_contMDiffAt_vectorField](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/injective-inner-contmdiffat-vectorfield.md) | 137 | `result-track:109e41f2111c785d2ee4dea7d72c969a27415713f36e0b7ff162ef8ad11a717f` |
| 5 | `macro_rules` | [(anonymous)](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/macro-rules-source-edition-2.md) | 167 | `declaration-track:d81b3412551ed09aca6f6b9e4ac643fb1893cc1b4a4a5e0191dee6001ea8ccc7` |
| 6 | `macro_rules` | [(anonymous)](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/macro-rules.md) | 169 | `declaration-track:57b9d42f928744e1b7b3f7fac89cc950c7e76d0efca1df3f8782b7d6108dd062` |
| 7 | `lemma` | [_root_.MDifferentiable.inner_bundle'](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/root-mdifferentiable-inner-bundle.md) | 184 | `result-track:2f60045490a2bdc692ba1caddda7a544d9173fcc17dd4619fcad1cec5554d0a3` |
| 8 | `lemma` | [_root_.MDifferentiableAt.inner_bundle'](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/root-mdifferentiableat-inner-bundle.md) | 189 | `result-track:dbf7b9f69fcb5b5f49c7522630794e36de88dfc59a54f0d3c334121a76744901` |
| 9 | `structure` | [IsLeviCivitaConnection](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/islevicivitaconnection.md) | 201 | `declaration-track:1eb4dd633c52eb50459f91e00a9b6f8fc71b0dd70a20c232b94e746b5491e8ca` |
| 10 | `lemma` | [IsLeviCivitaConnection.apply_eq](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/islevicivitaconnection-apply-eq.md) | 214 | `result-track:758691e0c4cc31b9c159bd1db615888c774a6180fef0b29add9a796a4065aea6` |
| 11 | `lemma` | [IsLeviCivitaConnection.apply_eq_extend](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/islevicivitaconnection-apply-eq-extend.md) | 239 | `result-track:cbc1d52cdabf1d87976f3088bce976d838f9b60339cf014f812ef0abac79b516` |
| 12 | `theorem` | [IsLeviCivitaConnection.uniqueness](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/islevicivitaconnection-uniqueness.md) | 255 | `result-track:090b021feca3ac515c176617cdc332e8bd79e17a9c2db9ec09ba57dff9441181` |
| 13 | `def` | [leviCivitaAuxInner](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaauxinner.md) | 269 | `declaration-track:9a323f2dc774bee5a305a6b3b490136b06def1a0f992c6fd4ab4973c77f78610` |
| 14 | `theorem` | [tensorialAt_leviCivitaAuxInner₁](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/tensorialat-levicivitaauxinner-source-edition-2.md) | 276 | `result-track:2c22130026f200bf3a87d67059bc7ad68f66808485a4fcaa088d692a73f09a11` |
| 15 | `theorem` | [tensorialAt_leviCivitaAuxInner₃](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/tensorialat-levicivitaauxinner.md) | 290 | `result-track:0aec2233567c73cba266612f563c47531c9b9b07e228410816cbfc774f4921fb` |
| 16 | `def` | [leviCivitaAuxOfMDiffAt](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaauxofmdiffat.md) | 309 | `declaration-track:fed9f13c378ef04efa5dd82f89bf8d0cb7ba35432e3fe9ad28592b02f1762624` |
| 17 | `theorem` | [leviCivitaAuxOfMDiffAt_apply_inner](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaauxofmdiffat-apply-inner.md) | 318 | `result-track:df263d0e134f5c0e183d7f7e28e7fd9e297d2923a2611c1876a83175ba9aba5e` |
| 18 | `def` | [leviCivitaAux](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaaux.md) | 326 | `declaration-track:ca8110b8581cede934955fa63dc0d2544ca7332b5492084c8eecb275d5a5020f` |
| 19 | `theorem` | [leviCivitaAux_apply_inner](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaaux-apply-inner.md) | 331 | `result-track:9c9b7738d7ee1ca9d7ed48a4dc1591cef161df2a25c140e981cd9d33202767eb` |
| 20 | `lemma` | [isCovariantDerivativeOn_leviCivitaAux](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/iscovariantderivativeon-levicivitaaux.md) | 336 | `result-track:53d7fface31df78115895702104ab292e7c2abecf12826fe7112957b46b1cd22` |
| 21 | `def` | [leviCivitaConnection](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaconnection.md) | 359 | `declaration-track:e8eca5a70b6de77bd0da66529bc9b8e6ae3735c6a7585bc7e2db942a30eeb96e` |
| 22 | `theorem` | [leviCivitaConnection_apply_inner](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaconnection-apply-inner.md) | 364 | `result-track:32055e8e899b22e72f3cd950a3d580b4bbacea9b5af716551b595a3fb42771ab` |
| 23 | `theorem` | [leviCivitaConnection_apply_inner_right](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/levicivitaconnection-apply-inner-right.md) | 373 | `result-track:8b1850a29e46eeb1156235ec11f2410611a1d2c53a49f5266f8adfad0bfd7824` |
| 24 | `lemma` | [isMetricCompatible_leviCivitaConnection](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/ismetriccompatible-levicivitaconnection.md) | 383 | `result-track:6c7694d7aa0810e9e9ff8c22335b3127368e60939f1d3d1648ac9d85328f08ed` |
| 25 | `lemma` | [torsion_leviCivitaConnection_eq_zero](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/torsion-levicivitaconnection-eq-zero.md) | 396 | `result-track:3288ccc19bdf19448adbd2dc815fac2be9f3381b2f2fc9bedb5e3c4fc546886d` |
| 26 | `lemma` | [isLeviCivitaConnection_leviCivitaConnection](../../../../DifferentialGeometry/LeviCivitaPublic.lean/declarations/islevicivitaconnection-levicivitaconnection.md) | 408 | `result-track:32a33be20da8cc44bafe83f02eccdd438e4eb96ae2e7fa72a7d4e8b5b3a1d875` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a742dd8c7ca48cabd530063995de336ed8fa791fd2d6efed8c145098a47cb67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
