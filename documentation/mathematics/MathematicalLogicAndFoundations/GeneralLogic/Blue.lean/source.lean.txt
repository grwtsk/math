import Color.Admissibility

namespace Color

namespace Blue

def band : Band :=
  { name := "blue",
    namespaceName := "Color.Blue",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := blueCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.blue

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Blue" := rfl

end Blue

end Color
