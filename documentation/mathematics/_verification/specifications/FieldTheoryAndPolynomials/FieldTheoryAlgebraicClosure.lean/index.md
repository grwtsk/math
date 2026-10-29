# Verification target: Field Theory Algebraic Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e9e534da228d65a181c54805e278e4d0dc068b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e9e534da228d65a181c54805e278e4d0dc068b`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Closure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Algebraic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [algebraicClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/algebraicclosure.md) | 36 | `declaration-track:8dd1ed56b1b8db1b90b16452d136f927846be703351923924e4ecaecc8ec5f47` |
| 2 | `theorem` | [algebraicClosure_toSubalgebra](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/algebraicclosure-tosubalgebra.md) | 41 | `result-track:523339256e7e410420b3c81ffa141d5d7bac5a27cc051ba39a0b7aa1d69b2908` |
| 3 | `theorem` | [mem_algebraicClosure_iff'](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/mem-algebraicclosure-iff-source-edition-2.md) | 46 | `result-track:e09e458d1829eb36444f59f55c6c6ad0dd1c1813a03ab41b6d65e8ac42761b21` |
| 4 | `theorem` | [mem_algebraicClosure_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/mem-algebraicclosure-iff.md) | 51 | `result-track:9ab378414299f3dd98a9f7e638bd381e84a8144fd8b293396aea960ad10bba77` |
| 5 | `theorem` | [map_mem_algebraicClosure_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/map-mem-algebraicclosure-iff.md) | 56 | `result-track:8a3032cfbf304d0b966518cddea32f61f7b794a005411c52d9218883c4a3662b` |
| 6 | `theorem` | [comap_eq_of_algHom](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/comap-eq-of-alghom.md) | 64 | `result-track:4857e5e82988355ef2af86c2cd1cf98789af0b35553e9e2ddb6752e88e810724` |
| 7 | `theorem` | [map_le_of_algHom](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/map-le-of-alghom.md) | 71 | `result-track:fca4f5ef49069a6bcba7082b31432723c1d9bcbe6494eb2113c3ef04c458c157` |
| 8 | `theorem` | [map_eq_of_algebraicClosure_eq_bot](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/map-eq-of-algebraicclosure-eq-bot.md) | 79 | `result-track:91f339dd0661bc766f98e4423aec5dbed11ae782ed5aec2ad6278a1db0e00e83` |
| 9 | `theorem` | [map_eq_of_algEquiv](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/map-eq-of-algequiv.md) | 89 | `result-track:12d4f102e59bfc6071e2338e83fe739aac504897fcc704ed047bdbd48c9cb4d5` |
| 10 | `def` | [algEquivOfAlgEquiv](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/algequivofalgequiv.md) | 96 | `declaration-track:00db8c6c6ea509fc3d26a0e0039c8c27f438415cb81e0cf77ea45ea83b24195e` |
| 11 | `instance` | [isAlgebraic](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/isalgebraic.md) | 105 | `declaration-track:1e7c5a15d4e40d7a97e6c21516dd40fc9beab3beefcb26ffeabbe19b64c0699a` |
| 12 | `instance` | [isIntegralClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/isintegralclosure.md) | 109 | `declaration-track:56f7800d56f6dad35eb959b98d67ff45dd0e542f80631d4a5d7073fe2346b78a` |
| 13 | `theorem` | [Transcendental.algebraicClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/transcendental-algebraicclosure.md) | 114 | `result-track:421408986d80e28cc42fd130ad5143971af24c9976da5fd5d5ded65364119d1c` |
| 14 | `theorem` | [le_algebraicClosure'](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/le-algebraicclosure.md) | 122 | `result-track:7423df71cc81277b6f7717d4a132421fd952dfee45a29e62a9c08f7f232bc7ac` |
| 15 | `theorem` | [le_algebraicClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/le-algebraicclosure-source-edition-2.md) | 129 | `result-track:a5640cd30936b2e83fe1952e6eea384b373070a2b457687bb7ca644c70390154` |
| 16 | `theorem` | [le_algebraicClosure_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/le-algebraicclosure-iff.md) | 134 | `result-track:aec5a57a47fb0f6a6f6205364fa832802ec1010e8e73ffd946f6dd5d257b5cfc` |
| 17 | `theorem` | [algebraicClosure_eq_bot](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/algebraicclosure-eq-bot.md) | 144 | `result-track:4786e01e6d4c0eb00ccec8be508c29e45cda7473df02fb8e5cde4d5991a9c1d0` |
| 18 | `theorem` | [normalClosure_eq_self](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/normalclosure-eq-self.md) | 150 | `result-track:75ec7c8b65e755ffc6b408e7d261989433411a17a6a281dbf3ce6c860ca0b44c` |
| 19 | `theorem` | [IsAlgClosed.algebraicClosure_eq_bot_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/isalgclosed-algebraicclosure-eq-bot-iff.md) | 160 | `result-track:5411b93ab640e2404b9574bee97313b3311572ea30177c155fb84a287ef0ba55` |
| 20 | `theorem` | [IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/intermediatefield-isalgebraic-adjoin-iff-isalgebraic.md) | 171 | `result-track:642ee548c0e47b16a4f5db4c9b0de5e16b440128a16a60aeb8abec420ac01bfd` |
| 21 | `instance` | [isAlgClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/isalgclosure.md) | 180 | `declaration-track:8db757a810192ffc575b0faa4b2551cf1a4fc212da2eff91029fa150f980e12b` |
| 22 | `theorem` | [eq_top_iff](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/eq-top-iff.md) | 186 | `result-track:ab8f03b1b51db59944100dda7e57fa3e58ee8673e777944e0da2832266aad41b` |
| 23 | `theorem` | [le_restrictScalars](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/le-restrictscalars.md) | 192 | `result-track:3c054eff404673e756daf78caa78931eaba1eb1ffe61cecb4f7689981fceacfd` |
| 24 | `theorem` | [eq_restrictScalars_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/eq-restrictscalars-of-isalgebraic.md) | 198 | `result-track:91ef411c3199345cb44aaaca4e7d933d8275f18c4b88db75a08fd203763bdab9` |
| 25 | `theorem` | [adjoin_le](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/adjoin-le.md) | 205 | `result-track:7a61dc07dab50ea0eeeceb72938c38ca7901d50cfbeb59d430672772cfe3b6a5` |
| 26 | `theorem` | [Splits.algebraicClosure](../../../../FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/declarations/splits-algebraicclosure.md) | 216 | `result-track:3a38f5f16a6f20ef2224b16f222129f65e3c20fa3a89bff9bc5f4488b8488db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd204af797d3ef4db5000a1996dfdd52c60ca09e13dbe8eb92df2d636ed80248 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean","GRWTSK/_verification/specifications/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
