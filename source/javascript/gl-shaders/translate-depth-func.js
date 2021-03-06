import { normalizeFactor } from '../common/shaders';

export default function (gl, depth) {
  if (!depth) {
    return gl.LEQUAL;
  }

  switch (normalizeFactor(depth)) {
    case 'gequal': return gl.GEQUAL;
    case 'lequal': return gl.LEQUAL;
    case 'equal': return gl.EQUAL;
    case 'greater': return gl.GREATER;
    case 'less': return gl.LESS;
    default: return gl.LEQUAL;
  }
}
