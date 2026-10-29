# Verification target: Data Real Pi Irrational

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7daa9b8eb3552337ffb8da3441481f0d01473a05",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DataRealPiIrrational.lean/index.md) · [Full source](../../../../RealFunctions/DataRealPiIrrational.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7daa9b8eb3552337ffb8da3441481f0d01473a05`.

Source path: `GRWTSK/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/i.md) | 41 | `declaration-track:aef3e1ac0e48bc2d078701dc3c9d035dc1c0ca386eceba84704c85d82b18a0b4` |
| 2 | `lemma` | [I_zero](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/i-zero.md) | 45 | `result-track:eec11f9218beaf90f4d298e214059cc193d9a55692e29bdb63ccd0bb15390afd` |
| 3 | `lemma` | [recursion'](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/recursion-source-edition-2.md) | 59 | `result-track:7249cfed2fd2f3bbd30a7b32773121d29e8204a1779e12c62363c4e1bf109f8d` |
| 4 | `lemma` | [recursion](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/recursion.md) | 122 | `result-track:3017793533711ae34f3d79c76f66dcb59f3ae2e7bad75fbcb8032ee2689c4140` |
| 5 | `lemma` | [I_one](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/i-one.md) | 133 | `result-track:5e72f4be604ffd9f11e6292fbd08fdb78373961486f039fa55206dec0a57a223` |
| 6 | `def` | [sinPoly](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/sinpoly.md) | 143 | `declaration-track:fc6376c146c9259533442306c65ca32ce7707fad690d94696a1af960f6442691` |
| 7 | `def` | [cosPoly](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/cospoly.md) | 154 | `declaration-track:0b106ea923a66696e66a897dc1fffab6e3a1b4e82ae998c9bec992fc4db64030` |
| 8 | `lemma` | [sinPoly_natDegree_le](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/sinpoly-natdegree-le.md) | 164 | `result-track:21ba9cc41c06496c0428698ad29a086a6998b1c08a769722efc1e412260d484a` |
| 9 | `lemma` | [cosPoly_natDegree_le](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/cospoly-natdegree-le.md) | 179 | `result-track:9ce440bca169d8c4bc6f4ece76359785398206b993e72cfe2c5958102540f01e` |
| 10 | `lemma` | [sinPoly_add_cosPoly_eval](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/sinpoly-add-cospoly-eval.md) | 193 | `result-track:8240fa0b3f6cd0b11f50338e2ecd6eb507e96f322d1f94b836bf4b8025ce547f` |
| 11 | `lemma` | [is_integer](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/is-integer.md) | 211 | `result-track:11185ab6a65e4c85029d0baf8fd095a04b89f21fd8236cf864e1c6dbce9b9e55` |
| 12 | `lemma` | [I_pos](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/i-pos.md) | 235 | `result-track:f7b5240f502c806ac11764ec12cc399c8c848e00df2bb4d0c681e1c95e1316f9` |
| 13 | `lemma` | [I_le](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/i-le.md) | 248 | `result-track:61a5b09b30a7ca254b8843de95eb41b2bfd6ffc22f6a824628c3070cb780588c` |
| 14 | `lemma` | [tendsto_pow_div_factorial_at_top_aux](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/tendsto-pow-div-factorial-at-top-aux.md) | 263 | `result-track:6825ae0dccec7ada3cf998c7919e1129848fc8ec2679671046dc6649c12f44bc` |
| 15 | `lemma` | [not_irrational_exists_rep](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/not-irrational-exists-rep.md) | 270 | `result-track:01043de7c636cfc857a43e1e79c11d5e950d144edd74b187e85e804d87076af0` |
| 16 | `theorem` | [irrational_pi](../../../../RealFunctions/DataRealPiIrrational.lean/declarations/irrational-pi.md) | 276 | `result-track:07b69fde7fc741adda9beb8591a45464297c6859a063a67ebec0fe61df2c46c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8f10e7994d898691c2bb7257845774ec0a41a67f46c8350617925f51258cc34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
