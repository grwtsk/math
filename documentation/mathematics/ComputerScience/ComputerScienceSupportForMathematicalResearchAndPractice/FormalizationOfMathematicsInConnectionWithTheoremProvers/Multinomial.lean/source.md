# Multinomial — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2a6500bd083383123a86d42b9f2582dd94b7eb7` · SHA-256 `a8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f506c6163656d656e742e6c65616e


/- source-tree-label: STL1|L|addr=01110101|role=proof_code_atom|slug=sourcetree-multinomial|owner=canonical_owner|core=SourceTree/Multinomial.lean|leaf=M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

abbrev BraidWeight := Think.Pipeline.Center.BraidWeight

def multinomialForPlacement (q : PhasePlacement) : Nat :=
  (Think.Pipeline.Center.braidWeight q.phase).multinomial

theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.left *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.center *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.right := by
  exact Think.Pipeline.Center.multinomial_denominator_pos w

end Think.SourceTree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13fb9ca9e895c0251ff3722995a6071748e5809bd30b450b7130af1b4df89223 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e/Varianta8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
