import { show } from "./show.js";

export const getPhoto = (photos, name) => {
    const searchPhoto = photos.find(item => item.photoID === name); 
    const updatedPhotos = photos.filter(item => item.photoID !== name);
    console.clear();
    if(searchPhoto){
        show(`\n Voici la photo: ${searchPhoto.photoID}, de ${searchPhoto.owner} \n`)
        return updatedPhotos;
    }else{
        show("\n La photo n'a pas été trouvée ou a été perdu \n")
        return photos;
    }
}